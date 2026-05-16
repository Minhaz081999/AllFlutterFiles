import 'package:flutter/material.dart';



class ButtonGrp extends StatelessWidget {
  const ButtonGrp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is a Button Group .",
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          children: [
                 // 1st button.................
                 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.elliptical(10,50)),
                      ),
                    ),
                    onPressed:(){},
                child: Text("This is a Elevated Button",
                )),

            // 2nd button .............................
            SizedBox(
              height: 50,
                // width: 100,
                width: double.infinity,

                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )
                    ),
                    onPressed:(){}, child: Text("data"))),

            // gap
            SizedBox(height: 10,),
            // 3rd button .........................
            OutlinedButton(onPressed: (){}, child: Text("Outline Button")),
            // 4th button ......................................
            TextButton(
                onPressed: (){
                print("This is a Text Button .");
            },
                child: Text("Text Button")
            ),
            // ICON show ......................................
            Icon(Icons.phone_android,size: 50,color: Colors.red,),
            // Icon Button .....................................
            IconButton(onPressed: (){}, icon: Icon(Icons.delete, size: 50,color: Colors.teal,)),
            // gap
            SizedBox(height: 20),

            // SPECIAL button ......................................
            GestureDetector(
              onDoubleTap: (){
                print("Double Tap");
              },

              onLongPress: (){
                print("Clickilng Long Press");
              },
                child: Text("This a Text")
            ),


          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("object");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
