
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'main.dart';
class NotificationService {
// This object is created so your app can talk to Firebase to receive notifications.
 static final FirebaseMessaging _messaging = FirebaseMessaging.instance;

static Future<void> initialize()async{
// It starts Firebase and connects your app to your Firebase project.
 await Firebase.initializeApp();
 // settings = User’s answer       //requestPermission() = Ask user permission
 NotificationSettings setting = await _messaging.requestPermission(
   alert: true,
   sound: true,
   badge: true
 );
 print('permission = ${setting.authorizationStatus}');

 String ? token = await _messaging.getToken();
 print('Device token = ${token}');
 print('object');

 FirebaseMessaging.onMessage.listen((RemoteMessage message){
   final context  = navigatorKey.currentContext!;
   showDialog(context: context, builder: (_)=>AlertDialog(
     title: Text(message.notification!.title ?? ''),
     content: Text(message.notification!.body ?? ''),
   ));
 });
}

Future<void>firebaseMessageinBackgroundHandler(RemoteMessage message)async{
await Firebase.initializeApp();
}

}