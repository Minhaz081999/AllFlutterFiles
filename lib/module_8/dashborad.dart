import 'package:flutter/material.dart';


class Dashborad extends StatelessWidget {
    String phone;
    String ? pass;
  Dashborad({super.key, required this.phone,  this.pass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // showing phone number
            Text(phone,
            style: TextStyle(
                color: Colors.red,
                fontSize: 20,
            ),

            ),
            // showing password
            Text(pass!,
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
