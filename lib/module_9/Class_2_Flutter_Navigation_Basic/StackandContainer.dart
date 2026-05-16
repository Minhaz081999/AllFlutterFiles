import 'package:flutter/material.dart';


class Stackandcontainer extends StatelessWidget {
  const Stackandcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack and Container "),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
            // 1st Stack...........................
            Stack(

              children: [
                // 1st
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,

                ),
                // 2nd
                Positioned(
                  top: 10,
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Container(
                    height: 250,
                    width: 250,
                    color: Colors.green,

                  ),
                ),
                // 3rd
                Positioned(
                  top: 20,
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.yellow,

                  ),
                ),
              ],),

          ),
          
          // 2nd Stack...........................
          Stack(
            children: [
              CircleAvatar(
               // backgroundImage: NetworkImage("	https://img.freepik.com/free-vector/app-development-illustration_52683-47931.jpg"),
                backgroundImage: AssetImage("assets/ur.png"),
                radius: 100,
              ),
              Positioned(
                bottom: 10,
                right: 30,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black,width: 2),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
