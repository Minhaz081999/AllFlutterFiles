import 'package:flutter/cupertino.dart';
import 'package:task_manager/app.dart';
import 'package:provider/provider.dart';

import 'Providers/Auth_Provider.dart';
import 'Providers/Network_Provider.dart';
void main (){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> AuthProvider()),
      ChangeNotifierProvider(create: (_)=> NetworkProvider()),
      
    ],
      child: TaskManagerApp(),
    ),
  );
}