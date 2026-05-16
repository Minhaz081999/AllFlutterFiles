import 'package:flutter/material.dart';
import 'package:google_map_project/my_location_screen.dart';

import 'Module24Assignment/MapScreen.dart';
import 'forPractice/home_screen.dart';
import 'home_screen.dart';


class GoogleMapDemo extends StatelessWidget {
  const GoogleMapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //home: HomeScreen(),
      home: HS()
    );
  }
}
