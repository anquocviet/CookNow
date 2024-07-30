import 'dart:developer';

import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class RegisterVerifyCodeScreen extends StatefulWidget {
  const RegisterVerifyCodeScreen({super.key, required this.verificationId});

  final String verificationId;

  @override
  State<RegisterVerifyCodeScreen> createState() =>
      _RegisterVerifyCodeScreenState();
}

class _RegisterVerifyCodeScreenState extends State<RegisterVerifyCodeScreen> {
  int _resendOtpTime = 60;
  final _pinController = TextEditingController();
  String get otp => _pinController.text;

  void _handleResendOtp() {
    setState(() {
      _resendOtpTime = 60;
    });
    _countDownResendOtp();
  }

  void _handleSubmitOtp(BuildContext context) {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId,
        smsCode: otp,
      );
      FirebaseAuth.instance.signInWithCredential(credential);
      context
          .push('${RouteName.registerUserInfo}/${RouteName.registerWelcome}');
    } on Exception catch (e) {
      log('Error: $e');
    }
  }

  void _countDownResendOtp() {
    Future.delayed(const Duration(seconds: 1), () {
      if (_resendOtpTime > 0) {
        setState(() {
          _resendOtpTime--;
        });
        _countDownResendOtp();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _countDownResendOtp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          const Text(
            'Xác minh OTP',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            'Nhập mã xác minh chúng tôi gửi vào số điện thoại của bạn.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 32),
          Pinput(
            controller: _pinController,
            length: 6,
            onCompleted: (pin) => _handleSubmitOtp(context),
          ),
          const SizedBox(height: 25),
          AuthButton('Tiếp tục', onPressed: () => _handleSubmitOtp(context)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Không nhận được mã?'),
              TextButton(
                onPressed: _resendOtpTime > 0 ? null : _handleResendOtp,
                child: Text('Gửi lại (${_resendOtpTime}s)'),
              )
            ],
          )
        ]),
      ),
    );
  }
}
