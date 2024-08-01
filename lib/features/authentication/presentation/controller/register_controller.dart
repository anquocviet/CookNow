import 'dart:developer';

import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/utils/check_formats.dart';
import 'package:cooknow/features/authentication/application/auth_service.dart';
import 'package:cooknow/features/authentication/data/dtos/register_dto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_controller.g.dart';

@Riverpod(keepAlive: true)
class RegisterController extends _$RegisterController {
  String _verificationId = '';

  @override
  FutureOr<void> build() {}

  Future<void> checkUserNotExist(String data) async {
    final authService = ref.read(authServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => authService.checkUserNotExist(data));
    if (state.hasError) {
      if (!isEmail(data) && !isPhone(data)) {
        throw UsernameIsAlreadyInUseException();
      }
      throw state.error!;
    }
  }

  Future<void> sendOtp(
      String mailPhone, VoidCallback onPassing, VoidCallback onSuccess) async {
    state = const AsyncLoading();
    state =
        await AsyncValue.guard(() => _sendOtp(mailPhone, onPassing, onSuccess));
    if (state.hasError) throw state.error!;
  }

  Future<void> verifyCode(String otp) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _verifyCode(otp));
    if (state.hasError) throw state.error!;
  }

  Future<void> register() async {
    final authService = ref.read(authServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(
        () => authService.register(ref.read(registerUserProvider)));
    if (state.hasError) throw state.error!;
  }

  _sendOtp(
      String mailPhone, VoidCallback onPassing, VoidCallback onSuccess) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.verifyPhoneNumber(
      phoneNumber: '+84$mailPhone',
      // phoneNumber: '+16505551234',
      timeout: const Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
        onPassing.call();
      },
      verificationFailed: (FirebaseAuthException e) {
        log('Error: ${e.message}');
      },
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
        onSuccess.call();
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Auto-resolution timed out...
        log('Auto-resolution timed out...');
      },
    );
  }

  _verifyCode(String otp) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId,
        smsCode: otp,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception catch (e) {
      if (e.toString().contains('invalid-verification-code')) {
        throw FirebaseInvalidVerificationCodeException();
      } else if (e.toString().contains('session-expired')) {
        throw FirebaseSessionExpiredException();
      } else {
        rethrow;
      }
    }
  }
}

@Riverpod(keepAlive: true)
RegisterDto registerUser(RegisterUserRef ref) {
  return RegisterDto();
}
