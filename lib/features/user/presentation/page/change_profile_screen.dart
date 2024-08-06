import 'package:cooknow/core/widget/custom_button.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:cooknow/features/user/presentation/controller/change_profile_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangeProfileScreen extends ConsumerWidget {
  const ChangeProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<void> state =
        ref.watch(changeProfileScreenControllerProvider);
    final Stream<User?> user = ref.watch(userServiceProvider).watchUser();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: StreamBuilder<User?>(
          stream: user,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return _buildChangeInfo(state, ref, snapshot.data!);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
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
