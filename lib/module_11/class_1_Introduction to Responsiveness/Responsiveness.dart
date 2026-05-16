import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
  const Responsiveness({super.key});

  @override
  Widget build(BuildContext context) {
    // VARIABLE nite hobe.......................................................
    Size ScreenSizeResponsive = MediaQuery.of(context).size;
    bool isTablet = ScreenSizeResponsive.width > 600;
    // white page nilam.........................................................
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction of Responsiveness"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icons show....................................................
              isTablet
                  ? Row(
                      children: [
                        Icon(Icons.home, size: 30),
                        SizedBox(width: 10),
                        Icon(Icons.people, size: 30),
                        SizedBox(width: 10),
                        Icon(Icons.lock_clock, size: 30),
                        SizedBox(width: 10),
                        Icon(Icons.delete, size: 30),
                        SizedBox(width: 10),
                        Icon(Icons.phone, size: 30),
                      ],
                    )
                  : Column(
                      children: [
                        Icon(Icons.home, size: 30),
                        SizedBox(height: 10),
                        Icon(Icons.people, size: 30),
                        SizedBox(height: 10),
                        Icon(Icons.lock_clock, size: 30),
                        SizedBox(height: 10),
                        Icon(Icons.delete, size: 30),
                        SizedBox(height: 10),
                        Icon(Icons.phone, size: 30),
                        SizedBox(height: 10),
                      ],
                    ),
              // gap
              SizedBox(height: 20),
              Container(height: 100, width: 100, color: Colors.red),
              SizedBox(height: 20),
              Text(
                "I am Responsive and width = ${ScreenSizeResponsive.width}",
                style: TextStyle(fontSize: ScreenSizeResponsive.width * 0.025),
              ),
              Container(
                // Screen ta boro korle size change hobe........................
                height: ScreenSizeResponsive.height * 0.2,
                width: ScreenSizeResponsive.width * 0.5,
                color: Colors.green,
              ),
              SizedBox(height: 20),
              Container(
                height: ScreenSizeResponsive.height,
                width: ScreenSizeResponsive.width,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              Text("Hello World Text", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
