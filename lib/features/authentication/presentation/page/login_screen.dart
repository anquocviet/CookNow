import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/utils/auth_validators.dart';
import 'package:cooknow/core/widget/custom_button.dart';
import 'package:cooknow/core/widget/custom_text_field.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/authentication/presentation/controller/login_controller.dart';
import 'package:cooknow/features/authentication/presentation/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> with AuthValidators {
  final _formKey = GlobalKey<FormState>();
  final _node = FocusScopeNode();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  String get username => _usernameController.text;
  String get password => _passwordController.text;

  bool _isObscure = true;
  bool isValid = false;

  void _checkValid(_) {
    setState(() {
      isValid = usernameErrorText(username) == null &&
          passwordErrorText(password, AuthMode.login) == null;
    });
  }

  void _login() async {
    try {
      await ref
          .read(loginScreenControllerProvider.notifier)
          .login(username, password);
    } on AppException catch (e) {
      if (mounted) showError(context, e.message);
    } catch (e) {
      if (mounted) showError(context, e.toString());
    }
  }

  void _userNameEditingComplete() {
    if (canSubmitUsername(username)) {
      _node.nextFocus();
    }
  }

  void _passwordEditingComplete() {
    if (canSubmitPassword(password, AuthMode.login) && isValid) {
      _login();
    }
  }

  @override
  void initState() {
    final String username = ref.read(registerUserProvider).username;
    final String password = ref.read(registerUserProvider).password;
    if (username.isNotEmpty && password.isNotEmpty) {
      _usernameController.text = username;
      _passwordController.text = password;
      isValid = true;
    }
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginScreenControllerProvider);

    return GestureDetector(
      onTap: () => _node.unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top -
                AppBar().preferredSize.height,
            child: FocusScope(
              node: _node,
              child: Form(
                key: _formKey,
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
                    CustomTextField(
                      'Username',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColor,
                      ),
                      validator: (username) =>
                          usernameErrorText(username ?? ''),
                      controller: _usernameController,
                      onEditingComplete: _userNameEditingComplete,
                      onChanged: _checkValid,
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
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
                      validator: (password) =>
                          passwordErrorText(password ?? '', AuthMode.login),
                      controller: _passwordController,
                      onEditingComplete: _passwordEditingComplete,
                      onChanged: _checkValid,
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
                        : CustomButton(
                            'Tiếp tục',
                            onPressed:
                                state.isLoading || !isValid ? null : _login,
                          ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Bạn chưa có tài khoản? '),
                        TextButton(
                          onPressed: () =>
                              context.push(RouteName.registerUserInfo),
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
            ),
          ),
        ),
      ),
    );
  }
}
