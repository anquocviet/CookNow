import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterWelcome extends StatelessWidget {
  const RegisterWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
            width: 286,
            height: 370,
          ),
          const Text(
            'Đăng ký thành công',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Chúc mừng bạn đã đăng ký thành công. Hãy chia sẻ nhiều món ngon với cộng đồng nhé!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 25),
          CustomButton('Bắt đầu', onPressed: () => context.go(RouteName.login)),
        ]),
      ),
    );
  }
}
