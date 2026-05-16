import 'package:flutter/material.dart';

class Grid_view extends StatelessWidget {
  const Grid_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Grid View ."),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: List.generate(10, (index)=> 
          
          Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              // color: Colors.deepPurpleAccent,
              gradient: LinearGradient(colors: [
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
                Text("Camera" ,
                    style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                ),
                )

              ],
            )

        ),
      )  )
      ,
      ),

    );
  }
}
