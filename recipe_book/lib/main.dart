import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_book/presentation/providers/recipe_provider.dart';
import 'package:recipe_book/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        // You can list all your providers here separated by commas
        ChangeNotifierProvider(create: (context) => RecipeProvider()),
        // Example: ChangeNotifierProvider(create: (context) => SettingsProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
        home: HomeScreen(),
      ),
    );
  }
}


