import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/utils/auth_validators.dart';
import 'package:cooknow/core/utils/check_formats.dart';
import 'package:cooknow/core/widget/show_error.dart';
import 'package:cooknow/features/authentication/presentation/controller/register_controller.dart';
import 'package:cooknow/core/widget/custom_button.dart';
import 'package:cooknow/core/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RegisterAccountInfoScreen extends ConsumerStatefulWidget {
  const RegisterAccountInfoScreen({super.key});

  @override
  ConsumerState<RegisterAccountInfoScreen> createState() =>
      _RegisterAccountInfoScreenState();
}

class _RegisterAccountInfoScreenState
    extends ConsumerState<RegisterAccountInfoScreen> with AuthValidators {
  final _formKey = GlobalKey<FormState>();
  final _node = FocusScopeNode();
  final _mailPhoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String get mailPhone => _mailPhoneController.text;
  String get password => _passwordController.text;
  String get confirmPassword => _confirmPasswordController.text;

  bool _isObscure = true;
  bool _isObscureConfirm = true;
  bool _confirmRule = false;
  bool isValid = false;

  void _submit() async {
    try {
      await ref
          .read(registerControllerProvider.notifier)
          .checkUserNotExist(mailPhone);
      await ref.read(registerControllerProvider.notifier).sendOtp(
        mailPhone,
        () => context.push(RouteName.registerWelcome),
        () {
          isEmail(mailPhone)
              ? ref.read(registerUserProvider).email = mailPhone
              : ref.read(registerUserProvider).phone = mailPhone;
          ref.read(registerUserProvider).password = password;
          context.push(
              '${RouteName.registerUserInfo}/${RouteName.registerVerifyCode}');
        },
      );
    } on AppException catch (e) {
      if (mounted) {
        showError(context, e.message);
      }
    } catch (e) {
      if (mounted) {
        showError(context, e.toString());
      }
    }
  }

  void _checkValid(_) {
    setState(() {
      isValid = (emailErrorText(mailPhone) == null ||
              phoneNumberErrorText(mailPhone) == null) &&
          passwordErrorText(password, AuthMode.register) == null &&
          confirmPasswordErrorText(password, confirmPassword) == null &&
          _confirmRule;
    });
  }

  void _mailPhoneEditingComplete() {
    if (canSubmitEmail(mailPhone) || canSubmitPhoneNumber(mailPhone)) {
      _node.nextFocus();
    }
  }

  void _passwordEditingComplete() {
    if (canSubmitPassword(password, AuthMode.register)) {
      _node.nextFocus();
    }
  }

  void _confirmPasswordEditingComplete() {
    if (password == confirmPassword) {
      _node.nextFocus();
    }
  }

  @override
  void dispose() {
    _node.dispose();
    _mailPhoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(registerControllerProvider);

    return GestureDetector(
      onTap: () => _node.unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FocusScope(
            node: _node,
            child: Form(
              key: _formKey,
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
                  CustomTextField(
                    'Email hoặc số điện thoại',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColor,
                    ),
                    controller: _mailPhoneController,
                    validator: (mailPhone) =>
                        mailPhoneErrorText(mailPhone ?? ''),
                    onEditingComplete: _mailPhoneEditingComplete,
                    onChanged: _checkValid,
                  ),
                  const SizedBox(height: 12),
                  CustomTextField(
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
                    controller: _passwordController,
                    validator: (password) =>
                        passwordErrorText(password ?? '', AuthMode.register),
                    onEditingComplete: _passwordEditingComplete,
                    onChanged: _checkValid,
                  ),
                  const SizedBox(height: 12),
                  CustomTextField(
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
                        _isObscureConfirm
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () => setState(() {
                        _isObscureConfirm = !_isObscureConfirm;
                      }),
                    ),
                    controller: _confirmPasswordController,
                    validator: (confirmPassword) => confirmPasswordErrorText(
                        password, confirmPassword ?? ''),
                    onEditingComplete: _confirmPasswordEditingComplete,
                    onChanged: _checkValid,
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
                        onChanged: (bool? value) {
                          setState(() {
                            _confirmRule = value!;
                          });
                          _checkValid(null);
                        }),
                  ),
                  const SizedBox(height: 25),
                  state.isLoading
                      ? const CircularProgressIndicator()
                      : CustomButton(
                          'Tiếp tục',
                          onPressed: isValid ? _submit : null,
                        )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
