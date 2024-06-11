import 'package:cooknow/features/authentication/presentation/page/register/register_user_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_button.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_text_field.dart';
import 'package:cooknow/core/widget/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _emailPhone = '';
  String _password = '';
  bool _isObscure = true;

  void _handleLogin(BuildContext context) {
    context.go(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Text(
              'Đăng nhập',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 40),
            AuthTextField(
              'Email hoặc số điện thoại',
              prefixIcon: Icon(
                Icons.person,
                color: Theme.of(context).primaryColor,
              ),
              onChanged: (value) => setState(() {
                _emailPhone = value;
              }),
            ),
            const SizedBox(height: 12),
            AuthTextField(
              'Mật khẩu',
              obscureText: _isObscure,
              enableSuggestions: false,
              autocorrect: false,
              prefixIcon: Icon(
                Icons.lock,
                color: Theme.of(context).primaryColor,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () => setState(() {
                  _isObscure = !_isObscure;
                }),
              ),
              onChanged: (value) => setState(() {
                _password = value;
              }),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text('Quên mật khẩu?'),
              ),
            ),
            AuthButton(
              'Tiếp tục',
              onPressed: (_emailPhone.isEmpty || _password.isEmpty)
                  ? null
                  : () => _handleLogin(context),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Bạn chưa có tài khoản? '),
                TextButton(
                  onPressed: () =>
                      context.push(RegisterUserInfoScreen.routeName),
                  child: Text('Đăng ký',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
