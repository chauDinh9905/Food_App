import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../../main.dart';
import '../../routes/app_route.dart';

@singleton
class LocalNotificationService {
  static final LocalNotificationService _instance =
  LocalNotificationService._internal();

  factory LocalNotificationService() {
    return _instance;
  }

  LocalNotificationService._internal();

  final FlutterLocalNotificationsPlugin _notifications =
  FlutterLocalNotificationsPlugin();
  static const int foodReminderNotificationId = 1001;
  Future<void> initialize() async {
    tz.initializeTimeZones();

    tz.setLocalLocation(
      tz.getLocation('Asia/Ho_Chi_Minh'),
    );

    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );

    const initializationSettings = InitializationSettings(
      android: androidSettings,
    );

    await _notifications.initialize(
      settings: initializationSettings,
      onDidReceiveNotificationResponse: _onNotificationResponse,
    );
  }

  void _onNotificationResponse(
      NotificationResponse response,
      ) {
    print('User bấm notification');
    print('Payload: ${response.payload}');
    appRouter.replace(
      const HomeRoute(),
    );
  }

  Future<void> requestPermission() async {
    final androidImplementation =
    _notifications.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();

    await androidImplementation?.requestNotificationsPermission();
  }

  Future<void> showTestNotification() async {
    const androidDetails = AndroidNotificationDetails(
      'food_order_channel',
      'Nhắc đặt cơm',
      channelDescription: 'Thông báo nhắc giờ chốt đặt cơm',
      importance: Importance.high,
      priority: Priority.high,
    );

    const notificationDetails = NotificationDetails(
      android: androidDetails,
    );

    await _notifications.show(
      id: foodReminderNotificationId,
      title: 'Nhắc đặt cơm',
      body: 'Sắp hết giờ đặt cơm! Đặt món trước 10:00 sáng nay.',
      notificationDetails: notificationDetails,
    );
  }

  Future<void> cancelFoodReminder() async {
    await _notifications.cancel(
     id:  foodReminderNotificationId,
    );
  }

  Future<void> scheduleFoodReminder({
    required DateTime scheduledDate,
  }) async {
    try {
      const androidDetails = AndroidNotificationDetails(
        'food_order_channel',
        'Nhắc đặt cơm',
        channelDescription: 'Thông báo nhắc giờ chốt đặt cơm',
        importance: Importance.high,
        priority: Priority.high,
      );

      const notificationDetails = NotificationDetails(
        android: androidDetails,
      );

      final scheduledTime = tz.TZDateTime.from(
        scheduledDate,
        tz.local,
      );

      print('NOW: ${tz.TZDateTime.now(tz.local)}');
      print('SCHEDULED: $scheduledTime');
      print('TIMEZONE: ${tz.local}');

      await _notifications.zonedSchedule(
        id: foodReminderNotificationId,
        title: 'Sắp hết giờ đặt cơm!',
        body: 'Đặt món trước 10:00 sáng nay.',
        scheduledDate: scheduledTime,
        notificationDetails: notificationDetails,
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        payload: 'food_reminder',
      );

      print('SCHEDULE SUCCESS');
    } catch (e, stackTrace) {
      print('SCHEDULE ERROR: $e');
      print(stackTrace);
    }
  }
  Future<void> checkPendingNotifications() async {
    final pendingNotifications =
    await _notifications.pendingNotificationRequests();

    print('=== PENDING NOTIFICATIONS ===');
    print('Count: ${pendingNotifications.length}');

    for (final notification in pendingNotifications) {
      print(
        'ID: ${notification.id}, '
            'title: ${notification.title}, '
            'body: ${notification.body}, '
            'payload: ${notification.payload}',
      );
    }

    print('=============================');
  }
  DateTime getTodayReminderTime() {
    final now = DateTime.now().toLocal();

    return DateTime(
      now.year,
      now.month,
      now.day,
      9,
      45,
    );
  }
}