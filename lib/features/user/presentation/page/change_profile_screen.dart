import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/utils/auth_validators.dart';
import 'package:cooknow/core/widget/custom_button.dart';
import 'package:cooknow/core/widget/custom_text_field.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/dtos/update_user_dto.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:cooknow/features/user/presentation/controller/change_profile_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ChangeProfileScreen extends ConsumerStatefulWidget {
  const ChangeProfileScreen({super.key});

  @override
  ConsumerState<ChangeProfileScreen> createState() =>
      _ChangeProfileScreenState();
}

class _ChangeProfileScreenState extends ConsumerState<ChangeProfileScreen>
    with AuthValidators {
  final _formKey = GlobalKey<FormState>();
  final _node = FocusScopeNode();
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _ageController = TextEditingController();
  final _livingController = TextEditingController();
  final _bioController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  String get name => _nameController.text;
  String get username => _usernameController.text;
  String get age => _ageController.text;
  String get living => _livingController.text;
  String get bio => _bioController.text;
  String get email => _emailController.text;
  String get phone => _phoneController.text;

  late int gender;
  Map<int, String> genderMap = {
    1: 'Nam',
    0: 'Nữ',
    -1: 'Khác',
  };

  void _submit(String userId, String avatar) async {
    try {
      await ref.read(changeProfileScreenControllerProvider.notifier).updateUser(
            UpdateUserDto(
              id: userId,
              name: name,
              age: int.parse(age),
              gender: gender,
              living: living,
              bio: bio,
              email: email,
              phone: phone,
              avatar: avatar,
            ),
          );
      if (mounted) {
        context.pop();
        showSuccess(context, 'Cập nhật thông tin thành công');
      }
    } on AppException catch (e) {
      if (mounted) showError(context, e.message);
    } catch (e) {
      if (mounted) showError(context, 'Có lỗi xảy ra');
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _ageController.dispose();
    _livingController.dispose();
    _bioController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<void> state =
        ref.watch(changeProfileScreenControllerProvider);
    final Stream<User?> user = ref.watch(userServiceProvider).watchUser();
    final User? currentUser = ref.read(userRepositoryProvider).currentAccount;
    _nameController.text = currentUser!.name;
    _usernameController.text = currentUser.account?.username ?? '';
    _ageController.text = currentUser.age.toString();
    gender = currentUser.gender;
    _livingController.text = currentUser.living;
    _bioController.text = currentUser.bio;
    _emailController.text = currentUser.email;
    _phoneController.text = currentUser.phone;

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
              child: StreamBuilder<User?>(
                stream: user,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final user = snapshot.data!;

                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(user.avatar),
                      ),
                      const SizedBox(width: 10),
                      CustomButton(
                        'Đổi hình',
                        width: 150,
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                        onPressed: state.isLoading
                            ? null
                            : () => ref
                                .read(changeProfileScreenControllerProvider
                                    .notifier)
                                .changeAvatar(),
                      ),
                      const SizedBox(height: 24),
                      CustomTextField(
                        'Tên',
                        controller: _nameController,
                        validator: (name) => fullNameErrorText(name ?? ''),
                        onChanged: (_) {},
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        'Username',
                        controller: _usernameController,
                        validator: (username) =>
                            usernameErrorText(username ?? ''),
                        onChanged: (_) {},
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        'Tuổi',
                        controller: _ageController,
                        validator: (age) => ageErrorText(age ?? ''),
                        onChanged: (_) {},
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
                            title: Text(
                                genderMap[genderMap.keys.elementAt(index)]!),
                            groupValue: gender,
                            activeColor: Theme.of(context).primaryColor,
                            onChanged: (int? value) => setState(() {
                              gender = value!;
                            }),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        'Nơi sống',
                        controller: _livingController,
                        onChanged: (_) {},
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        'Tiểu sử',
                        controller: _bioController,
                        onChanged: (_) {},
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        'Email',
                        controller: _emailController,
                        validator: (email) => emailErrorText(email ?? ''),
                        onChanged: (_) {},
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        'Số điện thoại',
                        controller: _phoneController,
                        validator: (phone) => phoneNumberErrorText(phone ?? ''),
                        onChanged: (_) {},
                      ),
                      const SizedBox(height: 24),
                      state.isLoading
                          ? const CircularProgressIndicator()
                          : CustomButton(
                              'Lưu',
                              onPressed: () => _submit(user.id, user.avatar),
                            ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
