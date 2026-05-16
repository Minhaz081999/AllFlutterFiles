import 'package:flutter/material.dart';

class Home_2 extends StatelessWidget {
  const Home_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is Home_2 page.  ",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
