import 'dart:async';

import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/widget/show_error.dart';
import 'package:cooknow/features/authentication/presentation/controller/register_controller.dart';
import 'package:cooknow/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class RegisterVerifyCodeScreen extends ConsumerStatefulWidget {
  const RegisterVerifyCodeScreen({super.key});

  @override
  ConsumerState<RegisterVerifyCodeScreen> createState() =>
      _RegisterVerifyCodeScreenState();
}

class _RegisterVerifyCodeScreenState
    extends ConsumerState<RegisterVerifyCodeScreen> {
  Timer? _timer;
  int _resendOtpTime = 60;
  final _pinController = TextEditingController();
  String get otp => _pinController.text;

  void _handleResendOtp() {
    setState(() {
      _resendOtpTime = 60;
    });
    _countDownResendOtp();
  }

  void _handleSubmitOtp() async {
    try {
      await ref.read(registerControllerProvider.notifier).verifyCode(otp);
      await ref.read(registerControllerProvider.notifier).register();
      if (mounted) {
        context
            .push('${RouteName.registerUserInfo}/${RouteName.registerWelcome}');
      }
    } on AppException catch (e) {
      if (mounted) {
        showError(context, e.message);
      }
    } on Exception catch (e) {
      if (mounted) {
        showError(context, e.toString());
      }
    }
  }

  void _countDownResendOtp() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_resendOtpTime > 0) {
        setState(() {
          _resendOtpTime--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _countDownResendOtp();
  }

  @override
  void dispose() {
    _pinController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(registerControllerProvider);

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
            onCompleted: (pin) => _handleSubmitOtp(),
          ),
          const SizedBox(height: 25),
          state.isLoading
              ? const CircularProgressIndicator()
              : CustomButton('Tiếp tục', onPressed: () => _handleSubmitOtp()),
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
