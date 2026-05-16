import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_test_2/flutter_local_notification.dart';
import 'package:firebase_test_2/notification_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_test_2/firebase_options.dart';

import 'firebase_options.dart';
import 'my_app.dart';
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

main()async{
  WidgetsFlutterBinding.ensureInitialized();

  await NotificationService.initialize();

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );

  await iniNotification();

  runApp( MyApp() );
}