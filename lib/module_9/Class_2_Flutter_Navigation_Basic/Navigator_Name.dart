import 'package:flutter/material.dart';

class NavigatorName extends StatelessWidget {
  const NavigatorName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Name"),
        backgroundColor: Colors.blue,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Navigator Name Button with back button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyanAccent,
                foregroundColor: Colors.black.withBlue(100),
                textStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

                onPressed: (){
                  Navigator.pushNamed(context, "buttonpage");
                },
                child: Text("Navigator Name Button with back button ")
            ),
            SizedBox(height: 10,),
            // Navigator Name Button without back button
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellowAccent,
                  foregroundColor: Colors.black.withBlue(100),
                  textStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),

                onPressed: (){
                  Navigator.pushReplacementNamed(context, "buttonpage");
                },
                child: Text("Navigator Name Button without back button ")
            ),
          ],
        ),
      ),
    );
  }
}
