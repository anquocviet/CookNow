import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_button.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterUserInfoScreen extends StatefulWidget {
  const RegisterUserInfoScreen({super.key});

  @override
  State<RegisterUserInfoScreen> createState() => _RegisterUserInfoScreenState();
}

class _RegisterUserInfoScreenState extends State<RegisterUserInfoScreen> {
  String username = '';
  int age = 0;
  int gender = 1;
  Map<int, String> genderMap = {
    1: 'Nam',
    0: 'Nữ',
    -1: 'Khác',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
              'Tên người dùng',
              prefixIcon: Icon(
                Icons.person,
                color: Theme.of(context).primaryColor,
              ),
              onChanged: (value) => setState(() {
                username = value;
              }),
            ),
            const SizedBox(height: 12),
            AuthTextField(
              'Tuổi',
              keyboardType: TextInputType.number,
              prefixIcon: Icon(
                Icons.calendar_month,
                color: Theme.of(context).primaryColor,
              ),
              onChanged: (value) => setState(() {
                age = value.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(value)
                    ? 0
                    : int.parse(value);
              }),
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
              itemBuilder: (context, index) {
                return RadioListTile<int>(
                  value: genderMap.keys.elementAt(index),
                  title: Text(genderMap[genderMap.keys.elementAt(index)]!),
                  groupValue: gender,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (int? value) => setState(() {
                    gender = value!;
                  }),
                );
              },
            ),
            const SizedBox(height: 25),
            AuthButton('Tiếp tục',
                onPressed: (username.isEmpty || age < 16)
                    ? null
                    : () => context.push(RouteName.registerAccountInfo))
          ],
        ),
      ),
    );
  }
}
