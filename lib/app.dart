import 'package:flutter/material.dart';

import 'package:flutter_widget/button_grp.dart';
import 'package:flutter_widget/home.dart';
import 'package:flutter_widget/module_13/class_3_REST_API_CRUD_Project/CRUD/crud_class/crud_class.dart';
import 'package:flutter_widget/module_8/Grid_View.dart';
import 'package:flutter_widget/module_8/Grid_view2.dart';
import 'package:flutter_widget/module_8/class_2_login_page.dart';
import 'package:flutter_widget/module_8/class_3_container.dart';
import 'package:flutter_widget/module_9/Class_2_Flutter_Navigation_Basic/LoginPage_2.dart';
import 'package:flutter_widget/module_9/Class_2_Flutter_Navigation_Basic/MultipleParameterPass.dart';

import 'Module10LiveTest/ConatactApp.dart';
import 'button_grp.dart';
import 'home.dart';
import 'module_10 _Assignment/CardShow.dart';
import 'module_10 _Assignment/Module_10_CardWidget.dart';
import 'module_11/class_1_Introduction to Responsiveness/Responsiveness.dart';
import 'module_11/class_2_PackageInstallation/RespoPackageInstallation.dart';
import 'module_11/class_3/Expand/Expand.dart';
import 'module_11/class_3/Flexiable/Flexiable.dart';
import 'module_11/class_3/Simple_TODO_APP/Simple_TODO_APP.dart';
import 'module_12/class_1_Understanding the State Concept/StateClass.dart';
import 'module_12/class_2_Stateful Widget Lifecycle/Statefull_LifeCycle.dart';
import 'module_12/class_3_Hands-on with Stateful Widgets/Calculator_App/Simple_Calculator_App.dart';
import 'module_13/BMI_calculator/BMI_calculator_Screen.dart';
import 'module_13/class_2_Working with APIs in Flutter/APIcalling.dart';
import 'module_13/class_3_REST_API_CRUD_Project/CRUD/crud_class/crud_class.dart';
import 'module_13/module14livetest/recipe_view.dart';
import 'module_8/class_1_input.dart';
import 'module_8/class_2_login_page.dart';
import 'module_9/Class_1_FlutterThemesandCustomization/class_1.dart';
import 'module_9/Class_2_Flutter_Navigation_Basic/ListVeiwPage.dart';
import 'module_9/Class_2_Flutter_Navigation_Basic/LoginPage_2.dart';
import 'module_9/Class_2_Flutter_Navigation_Basic/MultipleParameterPass.dart';
import 'module_9/Class_2_Flutter_Navigation_Basic/Navigator_Name.dart';
import 'module_9/Class_2_Flutter_Navigation_Basic/StackandContainer.dart';
import 'module_9/Class_3_StackandCustomWidget/OwnWidget.dart';
import 'module_9/Class_3_StackandCustomWidget/StackandCustomWidget.dart';
// new package import for responsive ui
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {


    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_ , child) {

          return  MaterialApp(
            // Tab er nam
            title: "Flutter Widget",
            // AppBar er debug likha shranor jonno
            debugShowCheckedModeBanner: false,

            // Theme.............................................
            //   theme: ThemeData(
            //     // Brightness
            //     brightness: Brightness.light,
            //     //brightness: Brightness.dark,
            //      primaryColor: Colors.teal,
            //      primarySwatch: Colors.teal,
            //    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
            //
            //
            //
            //     // Scaffold background color.............
            //     //scaffoldBackgroundColor: Colors.white,
            //
            //
            //     // AppBar theme
            //     appBarTheme: AppBarTheme(
            //       backgroundColor: Colors.yellow, // app bar background color
            //       centerTitle: true,               // optional: center the title
            //       titleTextStyle: TextStyle(       // optional: customize title text style
            //         color: Colors.red,
            //         fontStyle: FontStyle.italic,
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //
            //       ),
            //     ),
            //     // Text theme
            //     textTheme: TextTheme(
            //       headlineLarge: TextStyle(
            //         color: Colors.orange,
            //         fontStyle: FontStyle.italic,
            //         fontSize: 25,
            //         fontWeight: FontWeight.bold,
            //
            //       )
            //     ),
            //     // TextField theme
            //     inputDecorationTheme: InputDecorationTheme(
            //       // Border Decoration
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(20),
            //
            //       ),
            //       enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(20),
            //         borderSide: BorderSide(
            //           color: Colors.green,
            //           style: BorderStyle.solid,
            //           width: 5,
            //         )
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(20),
            //         borderSide: BorderSide(
            //           color: Colors.yellow,
            //           style: BorderStyle.solid,
            //           width: 2,
            //         )
            //       ),
            //       hintStyle: TextStyle(
            //         color: Colors.purpleAccent,
            //         fontSize: 20,
            //       ),
            //     ),
            //     // Elevated Button Theme
            //     elevatedButtonTheme: ElevatedButtonThemeData(
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: Colors.blue,
            //             // text color
            //             //foregroundColor: Colors.black,
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(20),
            //             ),
            //           // Text Style
            //           textStyle: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white, // text color
            //         ),
            //         )
            //     ),
            //   ),
            // darkTheme: ThemeData.dark().copyWith(
            //   primaryColor: Colors.purpleAccent,
            //   elevatedButtonTheme: ElevatedButtonThemeData(
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.green,
            //         textStyle: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.purple, // text color
            //         ),
            //
            //         // text color
            //         //foregroundColor: Colors.red,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(15),
            //         ),
            //
            //
            //       )
            //   ),
            // ),
            // themeMode: ThemeMode.light,
            home: SimpleCalculatorApp(),
            initialRoute: "crudclass",
            routes: {
              "homepage" : (context)=> Home(),
              "buttonpage" : (context)=> ButtonGrp(),
              "NavigatorNamepage" : (context)=> NavigatorName(),
              "LoginPage" : (context)=> LoginPage(),
              "MultipleParameterPass" : (context)=> Multipleparameterpass(),
              "LoginPage_2" : (context)=> LoginPage_2(),
              "Listveiwpage" : (context)=> Listveiwpage(),
              "Stackandcontainer": (context)=> Stackandcontainer(),
              "Stackandcustomwidget": (context)=> Stackandcustomwidget(),
              "Ownwidget": (context)=> Ownwidget(),
              "Cardshow": (context)=> Cardshow(),
              "ContactApp": (context)=> ContactApp(),
              "Responsiveness": (context)=> Responsiveness(),
              "Respopackageinstallation": (context)=> Respopackageinstallation(),
              "Expand":(context)=> Expand(),
              "Flexible":(context)=> Flexible_Widget(),
              "SimpleTodoApp":(context)=> SimpleTodoApp(),
              "StateClass" : (context)=> StateClass(),
              "Statefull_Lifecycle": (context)=> Statefull_Lifecycle(),
              "SimpleCalculatorApp": (context)=> SimpleCalculatorApp(),
              "Apicalling" : (context)=> Apicalling(),
              "BmiCalculatorScreen": (context)=> BmiCalculatorScreen(),
              "crudclass" : (context)=> crudclass(),
              "RecipeScreen":(context)=> RecipeScreen()

            },
          );

        }

        );

  }
}
