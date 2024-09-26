import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/user/presentation/controller/setting_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingScreenControllerProvider);

    Future<void> logout() async {
      try {
        await ref.read(settingScreenControllerProvider.notifier).logout();
      } on AppException catch (e) {
        showError(context, e.message);
      }
    }

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('Setting Screen'),
          ElevatedButton(
              onPressed: state.isLoading ? null : logout,
              child: const Text('Đăng xuất')),
        ],
      ),
    );
  }
}
