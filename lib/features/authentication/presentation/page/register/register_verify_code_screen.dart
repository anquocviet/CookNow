import 'package:cooknow/features/authentication/presentation/page/register/register_welcome.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class RegisterVerifyCodeScreen extends StatefulWidget {
  const RegisterVerifyCodeScreen({super.key});
  static const String routeName = '/register/verify-code';

  @override
  State<RegisterVerifyCodeScreen> createState() =>
      _RegisterVerifyCodeScreenState();
}

class _RegisterVerifyCodeScreenState extends State<RegisterVerifyCodeScreen> {
  final int _resendOtpTime = 60;

  // void _handleResendOtp() {
  //   setState(() {
  //     _resendOtpTime = 60;
  //   });
  //   _countDownResendOtp();
  // }

  void _handleSubmitOtp(BuildContext context) {
    context.push(RegisterWelcome.routeName);
  }

  // void _countDownResendOtp() {
  //   Future.delayed(const Duration(seconds: 1), () {
  //     if (_resendOtpTime > 0) {
  //       setState(() {
  //         _resendOtpTime--;
  //       });
  //       _countDownResendOtp();
  //     }
  //   });
  // }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // _countDownResendOtp();
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
            length: 6,
            onCompleted: (pin) => print(pin),
          ),
          const SizedBox(height: 25),
          AuthButton('Tiếp tục', onPressed: () => _handleSubmitOtp(context)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Không nhận được mã?'),
              TextButton(
                // onPressed: _resendOtpTime > 0 ? null : _handleResendOtp,
                onPressed: () {},
                child: Text('Gửi lại (${_resendOtpTime}s)'),
              )
            ],
          )
        ]),
      ),
    );
  }
}
