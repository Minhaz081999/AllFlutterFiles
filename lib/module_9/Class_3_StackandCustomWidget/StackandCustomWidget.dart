import 'package:flutter/material.dart';


class Stackandcustomwidget extends StatelessWidget {
  const Stackandcustomwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack and Custom Widget"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // custom widget calling here.......................
            CityCard(),
          ],
        ),
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  const CityCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 350,
         // padding:EdgeInsets.all(10),
          //clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
             // borderRadius: BorderRadiusGeometry.circular(20),
            image: DecorationImage(
                //image: NetworkImage("url")
                image: AssetImage("assets/Marvel's SpiderMan.png"),
                //fit: BoxFit.cover
            )
          ),
          child: Container(
            alignment: Alignment.bottomLeft,
            padding:EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.blue],

              )
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 10,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Spider Man",
              style: TextStyle(
                color: Colors.white,
              ),),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                  onPressed: (){},
                  child: Text("rating")
              ),
              Text("🎮 Controller",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),)
            ],
          ),
        ),
        Positioned(
          top: 10,
          left: 20,
          right: 10,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Amazing Spider-Man",
                style: TextStyle(
                  color: Colors.white,

                ),),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  onPressed: (){},
                  child: Text("PS5",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),)
              ),
              IconButton(onPressed: (){}, icon: Icon(
               Icons.heart_broken,
                color: Colors.red,
              ))
            ],
          ),
        ),

      ],
    );
  }
}
