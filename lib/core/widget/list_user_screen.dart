import 'dart:developer';

import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:cooknow/features/user/presentation/controller/profile_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ListUserScreen extends ConsumerWidget {
  const ListUserScreen({
    super.key,
    required this.title,
    required this.listUserId,
  });

  final String title;
  final List<String> listUserId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.read(userRepositoryProvider).currentUser;
    final state = ref.watch(profileScreenControllerProvider);
    log(listUserId.toString());

    void followUser(String followerId) {
      try {
        ref
            .read(profileScreenControllerProvider.notifier)
            .followUser(followerId);
      } on AppException catch (e) {
        showError(context, e.message);
      } catch (e) {
        showError(context, 'Đã xảy ra lỗi $e');
      }
    }

    void unFollowUser(String unFollowId) {
      try {
        ref
            .read(profileScreenControllerProvider.notifier)
            .unFollowUser(unFollowId);
      } on AppException catch (e) {
        showError(context, e.message);
      } catch (e) {
        showError(context, 'Đã xảy ra lỗi $e');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: listUserId.length,
        itemBuilder: (context, index) {
          final user = ref
              .read(userServiceProvider)
              .fetchUser(listUserId.elementAt(index));
          return FutureBuilder(
            future: user,
            builder: (context, snapshot) => snapshot.hasData
                ? ListTile(
                    onTap: () => snapshot.data!.id == currentUser.id
                        ? context.go(RouteName.profile)
                        : context.push(
                            '${RouteName.home}${RouteName.profileUser}',
                            extra: snapshot.data!.id),
                    leading: CircleAvatar(
                      radius: 20,
                      child: Image.network(
                        snapshot.data!.avatar,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 120,
                      child: FilledButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Theme.of(context).primaryColor,
                          ),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        onPressed: state.isLoading
                            ? null
                            : currentUser!.following.contains(snapshot.data!.id)
                                ? () => unFollowUser(snapshot.data!.id)
                                : () => followUser(snapshot.data!.id),
                        child: Text(
                          currentUser!.following.contains(snapshot.data!.id)
                              ? 'Hủy theo dõi'
                              : 'Theo dõi',
                        ),
                      ),
                    ),
                    title: Text(snapshot.data!.name),
                  )
                : const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
