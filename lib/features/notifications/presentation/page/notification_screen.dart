import 'package:cooknow/core/router/router_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future(() => ref.read(notificationProvider.notifier).noNotification());

    return const Scaffold(
      body: Center(
        child: Text('Notification Screen'),
      ),
    );
  }
}
