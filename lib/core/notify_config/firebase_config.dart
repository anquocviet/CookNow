import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseConfig {
  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  static Future<void> setupMessaging() async {
    // Config firebase
    await _messaging.setAutoInitEnabled(true);
    await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    // Config local notification
    // Create a channel for high importance notifications
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      importance: Importance.max,
    );
    final FlutterLocalNotificationsPlugin plugin =
        FlutterLocalNotificationsPlugin(); // Create a local notification plugin

    await plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel); // Create a channel

    plugin.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('launcher_icon'),
      ),
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      // If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.
      if (notification != null && android != null) {
        log(notification.toMap().toString());
        plugin.show(
          DateTime.now().millisecondsSinceEpoch.remainder(100000), // id random
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
            ),
          ),
        );
      }
    });
  }

  Future<void> setupInteractedMessage() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    log('Message data: ${message.toMap().toString()}');
  }
}
