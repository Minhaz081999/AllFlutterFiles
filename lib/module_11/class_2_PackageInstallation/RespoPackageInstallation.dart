import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Respopackageinstallation extends StatelessWidget {
  const Respopackageinstallation({super.key});

  @override
  Widget build(BuildContext context) {
    // variable nilam for "Portrait" and "Landscape"
    final Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("Resposive Package Intallation "),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          scrollDirection: orientation == Orientation.portrait
          ? Axis.vertical
          : Axis.horizontal,

          child: orientation == Orientation.portrait
              ?
          Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("the is first text ", style: TextStyle(fontSize: 25)),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.red),
                    ),
                    // gap
                    SizedBox(height: 20),

                    // responsive package ui using ....................................
                    // fixed sized height and width...................................
                    Container(
                      // fixed sized height and width
                      height: 200.r,
                      width: 200.r,
                      decoration: BoxDecoration(color: Colors.orange),
                      child: Text(
                        "Fixed size heigth = ${200.r} and weigth =${200.r}",
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 200.h,
                          // (0.5) mane 500 ....system(device) width ta k dui(2) vagay vag kora hoise
                          width: .5.sw,
                          decoration: BoxDecoration(color: Colors.blue),
                          child: Text(
                            "This is 4th container.\n"
                            "This is height =${200.h} and (.5.sw)width =${.5.sw}",
                          ),
                        ),

                        // maximun height and width hobe.... screen boro korle........
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 200,
                            maxWidth: 150,
                          ).hw,
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "This is 5th container using responsvie package",
                          ),
                        ),
                      ],
                    ),

                    // maximun height and width hobe.... screen boro korle............
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: 200,
                        maxWidth: 150,
                      ).hw,
                      decoration: BoxDecoration(color: Colors.yellow),
                      child: Text(
                        "This is third container using responsvie package",
                      ),
                    ),
                    // Minimum size niye start hobe .................................
                    Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(color: Colors.green),
                      child: Text(
                        "Minimum ei size niye start hobe. \n (150.h)height =${150.h} and (150.h)width = ${150.w}",
                      ),
                    ),
                    // Text er size change hobe screen boro choto korle...............
                    // kintu Minimun size niye start hobe ............................
                    Text(
                      "the is second text with responsive and fontSize = ${10.sp}  ",
                      style: TextStyle(fontSize: 10.sp),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("the is first text ", style: TextStyle(fontSize: 25)),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.red),
                    ),
                    // gap
                    SizedBox(width: 20),

                    // responsive package ui using ....................................
                    // fixed sized height and width...................................
                    Container(
                      // fixed sized height and width
                      height: 200.r,
                      width: 200.r,
                      decoration: BoxDecoration(color: Colors.orange),
                      child: Text(
                        "Fixed size heigth = ${200.r} and weigth =${200.r}",
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 200.h,
                          // (0.5) mane 500 ....system(device) width ta k dui(2) vagay vag kora hoise
                          width: .5.sw,
                          decoration: BoxDecoration(color: Colors.blue),
                          child: Text(
                            "This is 4th container.\n"
                            "This is height =${200.h} and (.5.sw)width =${.5.sw}",
                          ),
                        ),

                        // maximun height and width hobe.... screen boro korle........
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 200,
                            maxWidth: 150,
                          ).hw,
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "This is 5th container using responsvie package",
                          ),
                        ),
                      ],
                    ),

                    // maximun height and width hobe.... screen boro korle............
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: 200,
                        maxWidth: 150,
                      ).hw,
                      decoration: BoxDecoration(color: Colors.yellow),
                      child: Text(
                        "This is third container ",
                      ),
                    ),
                    // Minimum size niye start hobe .................................
                    Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(color: Colors.green),
                      child: Text(
                        "Minimum ei size niye start hobe. \n (150.h)height =${150.h} and (150.h)width = ${150.w}",
                      ),
                    ),
                    // Text er size change hobe screen boro choto korle...............
                    // kintu Minimun size niye start hobe ............................
                    Text(
                      "the is second text with responsive and fontSize = ${10.sp}  ",
                      style: TextStyle(fontSize: 10.sp),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
