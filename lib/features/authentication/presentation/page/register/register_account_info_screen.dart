import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_button.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterAccountInfoScreen extends StatefulWidget {
  const RegisterAccountInfoScreen({super.key});

  @override
  State<RegisterAccountInfoScreen> createState() =>
      _RegisterAccountInfoScreenState();
}

class _RegisterAccountInfoScreenState extends State<RegisterAccountInfoScreen> {
  String _mailPhone = '';
  String _password = '';
  bool _isObscure = true;
  String _confirmPassword = '';
  bool _isObscureConfirm = true;
  bool _confirmRule = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Text(
              'Đăng ký',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 25),
            AuthTextField(
              'Email hoặc số điện thoại',
              prefixIcon: Icon(
                Icons.person,
                color: Theme.of(context).primaryColor,
              ),
              onChanged: (value) => setState(() {
                _mailPhone = value;
              }),
            ),
            const SizedBox(height: 12),
            AuthTextField(
              'Mật khẩu',
              obscureText: _isObscure,
              autocorrect: false,
              enableSuggestions: false,
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
                setState(() => _password = value);
              }),
            ),
            const SizedBox(height: 12),
            AuthTextField(
              'Xác nhận mật khẩu',
              obscureText: _isObscureConfirm,
              autocorrect: false,
              enableSuggestions: false,
              prefixIcon: Icon(
                Icons.lock,
                color: Theme.of(context).primaryColor,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscureConfirm ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () => setState(() {
                  _isObscureConfirm = !_isObscureConfirm;
                }),
              ),
              onChanged: (value) => setState(() => _confirmPassword = value),
            ),
            const SizedBox(height: 8),
            ListTileTheme(
              horizontalTitleGap: 0,
              child: CheckboxListTile(
                title: const Text(
                  'Đồng ý với các điều khoản',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Theme.of(context).primaryColor,
                value: _confirmRule,
                onChanged: (bool? value) => setState(() {
                  _confirmRule = value!;
                }),
              ),
            ),
            const SizedBox(height: 25),
            AuthButton(
              'Tiếp tục',
              onPressed: (_mailPhone.isNotEmpty &&
                      _password.isNotEmpty &&
                      _confirmPassword.isNotEmpty &&
                      _confirmRule)
                  ? () {
                      context.push(RouteName.registerVerifyCode);
                    }
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
