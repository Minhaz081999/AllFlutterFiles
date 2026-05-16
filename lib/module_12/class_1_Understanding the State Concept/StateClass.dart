import 'package:flutter/material.dart';

class StateClass extends StatefulWidget {
   StateClass({super.key});

  @override
  State<StateClass> createState() => _StateClassState();
}

class _StateClassState extends State<StateClass> {
  // varibale declear korlam
  int num = 0;
  //additionButton Method
  additionButton(){
    setState(() {
      num++;
      print(num);
    });
  }
  // subtractionButton Method
  subtractionButton(){
    setState(() {
      num--;
      print(num);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFull Widget"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              num.toString() ,
              style: TextStyle(
                fontSize: 50,
                backgroundColor: Colors.blue
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.black
                    ),
                    onPressed: (){
                      // Function Calling
                      additionButton();
                    },
                    icon: Icon(Icons.add,color: Colors.red,)),
                IconButton(
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.black
                    ),
                    onPressed: (){
                      // Function Calling
                      subtractionButton();
                    },
                    icon: Icon(Icons.remove,color: Colors.blue,))
              ],
            )
          ],
        ),
      ),
    );
  }
}
