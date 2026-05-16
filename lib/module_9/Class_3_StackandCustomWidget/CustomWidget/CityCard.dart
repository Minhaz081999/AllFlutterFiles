import 'package:flutter/material.dart';


class CityCard extends StatelessWidget {
  final String image,title,rating;

  const CityCard({
    super.key, required this.image, required this.title, required this.rating

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 350,
            // padding:EdgeInsets.all(10),
            //clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.circular(20),
                image: DecorationImage(
                  //image: NetworkImage("url")
                  //image: AssetImage("assets/Marvel's SpiderMan.png"),
                  image: AssetImage(image),
                  //fit: BoxFit.cover
                )
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              padding:EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.circular(20),
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
                Text(title,
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
                    child: Text(rating)
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
      ),
    );
  }
}