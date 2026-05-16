import 'package:flutter/material.dart';



class Expand extends StatelessWidget {
  const Expand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expand"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Align, Container, Position use kore position thik kora jay.....................................
          Align(
            alignment: Alignment.topLeft,
            child: Text("List View k Sizebox or Expand er vitore use korte hobe ",

            ),
          ),
          // Expand ............................................................
          // Expand, Sizebox  er vitore ListView must use korte hoy
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: ListTile(
                      title: Text("List View ${index}",),
                        subtitle: Text("subtitle =${index}"),
                        leading : Icon(Icons.check),
                        trailing: Icon(Icons.delete),
                    ),
                  );
                }
                ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text("List View ${index+10}",),
                    subtitle: Text("subtitle =${index}"),
                    leading : Icon(Icons.check),
                    trailing: Icon(Icons.delete),
                  );
                }
            ),
          ),
          // Expanded er vitore Container ......................................
          Expanded(
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.yellow
                ),
              )
          ),
          Expanded(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.green
                ),
                child: Text("height= ${100} and width= ${100}"),
              )
          )
        ],
      ),
    );
  }
}
