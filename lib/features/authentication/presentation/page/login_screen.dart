import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/features/authentication/presentation/controller/login_controller.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_button.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  String _emailPhone = '';
  String _password = '';
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginScreenControllerProvider);
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
            state.isLoading
                ? const CircularProgressIndicator()
                : AuthButton(
                    'Tiếp tục',
                    onPressed: state.isLoading
                        ? null
                        : () => ref
                            .read(loginScreenControllerProvider.notifier)
                            .login(_emailPhone, _password),
                  ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Bạn chưa có tài khoản? '),
                TextButton(
                  onPressed: () => context.push(RouteName.registerUserInfo),
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
