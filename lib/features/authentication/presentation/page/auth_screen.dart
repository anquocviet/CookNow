import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            AuthButton(
              'Đăng nhập',
              onPressed: () => context.push(RouteName.login),
            ),
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
            AuthButton(
              'Tiếp tục bằng Google',
              icon: const Icon(
                Icons.g_mobiledata_outlined,
                color: Colors.white,
                size: 32,
              ),
              color: const Color(0xFF4285F4),
              onPressed: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            AuthButton(
              'Tiếp tục bằng Apple',
              icon: const Icon(
                Icons.apple,
                color: Colors.white,
                size: 32,
              ),
              color: const Color(0xFF000000),
              onPressed: () {},
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Bạn chưa có tài khoản? "),
                TextButton(
                    onPressed: () => context.push(RouteName.registerUserInfo),
                    child: Text(
                      'Đăng ký',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
