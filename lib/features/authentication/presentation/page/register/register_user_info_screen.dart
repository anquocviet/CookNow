import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/utils/auth_validators.dart';
import 'package:cooknow/core/widget/show_error.dart';
import 'package:cooknow/features/authentication/presentation/controller/register_controller.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_button.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RegisterUserInfoScreen extends ConsumerStatefulWidget {
  const RegisterUserInfoScreen({super.key});

  @override
  ConsumerState<RegisterUserInfoScreen> createState() =>
      _RegisterUserInfoScreenState();
}

class _RegisterUserInfoScreenState extends ConsumerState<RegisterUserInfoScreen>
    with AuthValidators {
  final _formKey = GlobalKey<FormState>();
  final _node = FocusScopeNode();
  final _fullNameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _ageController = TextEditingController();

  String get fullName => _fullNameController.text;
  String get username => _usernameController.text;
  String get age => _ageController.text;
  int gender = 1;
  Map<int, String> genderMap = {
    1: 'Nam',
    0: 'Nữ',
    -1: 'Khác',
  };
  bool isValid = false;

// Dispose the controllers and node when the widget is disposed. Avoid memory leaks.
  @override
  void dispose() {
    _node.dispose();
    _usernameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void _fullNameEditingComplete() {
    if (canSubmitFullName(fullName)) {
      _node.nextFocus();
    }
  }

  void _usernameEditingComplete() {
    if (canSubmitUsername(username)) {
      _node.nextFocus();
    }
  }

  void _ageEditingComplete() {
    if (canSubmitAge(age)) {
      _node.nextFocus();
    }
  }

  void _checkValid(_) {
    setState(() {
      isValid =
          usernameErrorText(username) == null && ageErrorText(age) == null;
    });
  }

  void _submit() async {
    try {
      await ref
          .read(registerControllerProvider.notifier)
          .checkUserNotExist(username);
      ref.read(registerUserProvider).name = fullName;
      ref.read(registerUserProvider).age = int.parse(age);
      ref.read(registerUserProvider).gender = gender;
      ref.read(registerUserProvider).username = username;
      if (mounted) {
        context.push(
            '${RouteName.registerUserInfo}/${RouteName.registerAccountInfo}');
      }
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

  @override
  Widget build(BuildContext context) {
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
                    'Thông tin',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 260,
                    child: Text(
                      'Thông tin này giúp mọi người có thể kết nối với bạn dễ dàng hơn.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  AuthTextField(
                    'Họ và tên',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColor,
                    ),
                    controller: _fullNameController,
                    validator: (fullName) => fullNameErrorText(fullName ?? ''),
                    onEditingComplete: _fullNameEditingComplete,
                    onChanged: _checkValid,
                  ),
                  const SizedBox(height: 12),
                  AuthTextField(
                    'Tên người dùng',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColor,
                    ),
                    controller: _usernameController,
                    validator: (username) => usernameErrorText(username ?? ''),
                    onEditingComplete: _usernameEditingComplete,
                    onChanged: _checkValid,
                  ),
                  const SizedBox(height: 12),
                  AuthTextField(
                    'Tuổi',
                    keyboardType: TextInputType.number,
                    prefixIcon: Icon(
                      Icons.calendar_month,
                      color: Theme.of(context).primaryColor,
                    ),
                    controller: _ageController,
                    validator: (age) => ageErrorText(age ?? ''),
                    onEditingComplete: _ageEditingComplete,
                    onChanged: _checkValid,
                  ),
                  const SizedBox(height: 12),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Giới tính',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: genderMap.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return RadioListTile<int>(
                        value: genderMap.keys.elementAt(index),
                        title:
                            Text(genderMap[genderMap.keys.elementAt(index)]!),
                        groupValue: gender,
                        activeColor: Theme.of(context).primaryColor,
                        onChanged: (int? value) => setState(() {
                          gender = value!;
                        }),
                      );
                    },
                  ),
                  const SizedBox(height: 25),
                  AuthButton('Tiếp tục', onPressed: isValid ? _submit : null),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
