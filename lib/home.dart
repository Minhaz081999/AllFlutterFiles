import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is an App Bar inside of SCAFOLD"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      body: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SingleChildScrollView(
               scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(" this is a Row.",
                    style:TextStyle(fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.w700),),
                  Text(" this is a Row.",
                    style:TextStyle(fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.w700),),
                  Text(" this is a Row.",
                    style:TextStyle(fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.w700),),
                  Text(" this is a Row.",
                    style:TextStyle(fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.w700),),
                  Text(" this is a Row.",
                    style:TextStyle(fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.w700),),
                  Text(" this is a Row.",
                    style:TextStyle(fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.w700),),
                  Text(" this is a Row.",
                    style:TextStyle(fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.w700),)
                ],
              ),
            ),
SizedBox(height: 25,),
            Align(
             alignment: Alignment.topLeft,

              child: Column(

                children: [
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                      ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
              
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
                  Text("This is a Body1 of Appppp" ,
                    style: TextStyle(fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800 ,
                    ),
              
                  ),
              
              
              ],
              ),
            ),

          ],
        ),
      )
    );
  }
}
