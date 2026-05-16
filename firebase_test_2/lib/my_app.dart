import 'package:firebase_test_2/student_list.dart';
import 'package:firebase_test_2/task_manager.dart';
import 'package:firebase_test_2/votting_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';
import 'main.dart';
import 'notification_demo.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'BD Vooting',
      home: StudentList(),
    );
  }
}
