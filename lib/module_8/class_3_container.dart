import 'package:flutter/material.dart';

class Container_View extends StatelessWidget {
  const Container_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Container and Grid View ."),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            // gap
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                // color: Colors.deepPurpleAccent,
                gradient: LinearGradient(colors: [
                  Colors.blueAccent, Colors.redAccent ,
                ],
                begin: Alignment.topLeft , end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(10),
                boxShadow:[ BoxShadow(
                  color: Colors.black,
                  blurRadius: 8.0,
                  offset: Offset(5, 5),

                ),],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt , size: 50 , color: Colors.white70,),
                  Text("Camera" , style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),)

                ],
              )

            )
          ],
        ),
      ),

    );
  }
}
