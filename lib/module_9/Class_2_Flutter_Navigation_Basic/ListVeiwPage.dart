import 'package:flutter/material.dart';


class Listveiwpage extends StatelessWidget {
  const Listveiwpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Page "),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(fontStyle: FontStyle.italic),
      ),
      body: Column(
        children: [
          // SizedBox(
          //   height: 200,
          //   // auto scroll thake ekhane
          //   child: ListView.builder(
          //       itemCount: 20,
          //       itemBuilder: (context,index) {
          //         return Text("list view index = $index");
          //       }),
          // ),
          SizedBox(
           height: 500,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                  return Card(
                    child: ListTile(
                      title: Text("this is list view"),

                      subtitle: Text("this is sub title text "),

                      // left icon show
                      leading: Icon(Icons.phone,color: Colors.greenAccent,),
                      // right icon show
                      trailing: Icon(Icons.delete,color: Colors.red,),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
