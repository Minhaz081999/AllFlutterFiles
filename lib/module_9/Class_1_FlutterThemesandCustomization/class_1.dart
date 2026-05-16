import 'package:flutter/material.dart';


class ThemeTest extends StatelessWidget {
  const ThemeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThemeTesting"),
       //backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text
            Text("Theme Testing in here ",
            style: Theme.of(context).textTheme.headlineLarge,
            ),

            // gap
            SizedBox(height :25),

            // TextField
            TextField(
              decoration: InputDecoration(
                hintText: "Enter anything you want .......",
              ),
            ),

            // gap
            SizedBox(height :25),

            // Elevated Button
            ElevatedButton(
                onPressed: (){},
                child: Text("Elevated Button")
            ),


          ],
        ),
      ),
    );
  }
}
