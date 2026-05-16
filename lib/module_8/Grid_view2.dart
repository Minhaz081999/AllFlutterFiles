import 'package:flutter/material.dart';

class GridView2 extends StatelessWidget {
  const GridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Grid View 2 ."),
        backgroundColor: Colors.blueAccent,
    ),
      
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
          ),

          itemCount: 20,
          itemBuilder: (context,index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                // color: Colors.deepPurpleAccent,
                gradient: LinearGradient(
                    colors: [
                    Colors.blueAccent, Colors.redAccent ,
                ],
                    begin: Alignment.topLeft , end: Alignment.bottomRight
                ),
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
                  Text(
                       "Camera - ${index}" ,
                       style: TextStyle(
                           fontSize: 25,
                           color: Colors.white
                  ),
                  )

                ],
              )

          ),
        );


      }

      ),



    );
  }
}
