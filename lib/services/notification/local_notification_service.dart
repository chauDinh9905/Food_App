import 'package:flutter_local_notifications/flutter_local_notifications.dart';

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
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );

    const initializationSettings = InitializationSettings(
      android: androidSettings,
    );

    await _notifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onNotificationResponse,
    );
  }

  void _onNotificationResponse(
      NotificationResponse response,
      ) {
    print('User bấm notification');
    print('Payload: ${response.payload}');
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
      foodReminderNotificationId,
      'Nhắc đặt cơm',
      'Sắp hết giờ đặt cơm! Đặt món trước 10:00 sáng nay.',
      notificationDetails,
    );
  }

  Future<void> cancelFoodReminder() async {
    await _notifications.cancel(
      foodReminderNotificationId,
    );
  }
}