import 'package:cooknow/core/widget/custom_button.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:cooknow/features/user/presentation/controller/change_profile_screen_controller.dart';
import 'package:cooknow/features/user/presentation/controller/profile_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangeProfileScreen extends ConsumerWidget {
  const ChangeProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<void> state =
        ref.watch(changeProfileScreenControllerProvider);
    final AsyncValue<User> user = ref.watch(getCurrentUserProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: switch (user) {
        AsyncData(:final value) => _buildChangeInfo(state, ref, value),
        AsyncError() => const Text('Oops, có lỗi xảy ra'),
        _ => const CircularProgressIndicator(),
      }),
    );
  }

  _buildChangeInfo(AsyncValue<void> state, WidgetRef ref, User user) => Column(
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
                    .read(changeProfileScreenControllerProvider.notifier)
                    .changeAvatar(),
          ),
        ],
      );
}
