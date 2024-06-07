import 'package:cooknow/features/authentication/presentation/widget/auth_button.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: height * 0.1),
              child: Image.network(
                'https://picsum.photos/305/275',
                width: 300,
                height: 280,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const AuthButton('Đăng nhập'),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(children: [
                Expanded(
                    child: Divider(
                  color: Color(0xFF263238),
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text("Hoặc"),
                ),
                Expanded(
                    child: Divider(
                  color: Color(0xFF263238),
                )),
              ]),
            ),
            const SizedBox(
              height: 16,
            ),
            const AuthButton(
              'Tiếp tục bằng Google',
              icon: Icon(
                Icons.g_mobiledata_outlined,
                color: Colors.white,
                size: 32,
              ),
              color: Color(0xFF4285F4),
            ),
            const SizedBox(
              height: 8,
            ),
            const AuthButton(
              'Tiếp tục bằng Apple',
              icon: Icon(
                Icons.apple,
                color: Colors.white,
                size: 32,
              ),
              color: Color(0xFF000000),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Bạn chưa có tài khoản? "),
                TextButton(onPressed: () {}, child: const Text('Đăng ký'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
