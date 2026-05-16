import 'package:flutter/material.dart';

class Multipleparameterpass extends StatelessWidget {
  const Multipleparameterpass({super.key});

  @override
  Widget build(BuildContext context) {

    // variable nite hobe
    final args = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            // showing phone number............................................
            Text(args["phone"].toString(),
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),

            ),
            // showing password................................................
            Text(args["password"].toString(),
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
