import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;

// App starts
//    ↓
// iniNotification() runs
//    ↓
// Notification system ready
//    ↓
// Notification shows 🔔
//    ↓
// User taps notification
//    ↓
// notificationTapBckground() runs

// It creates a tool to show notifications inside the phone itself.
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

// This function is used to set up notification system once, usually when app starts.
Future<void> iniNotification()async{
  tz.initializeTimeZones();

  // Sets notification icon for Android
  AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
  DarwinInitializationSettings iosSetting = DarwinInitializationSettings();

  // Notification system ready
  // One common configuration for both platforms
  InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosSetting
  );

  // Initialize the notification plugin
  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onDidReceiveBackgroundNotificationResponse:notificationTapBckground
  );


}
// notificationTapBckground() runs
// This function runs when:
// User taps notification
// App was closed / background
@pragma('vm:entry-point')
void notificationTapBckground(NotificationResponse response){
  print('Notification clicked');
}


