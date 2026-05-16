import 'package:flutter/material.dart';


class SimpleTodoApp extends StatefulWidget {
  const SimpleTodoApp({super.key});

  @override
  State<SimpleTodoApp> createState() => _SimpleTodoAppState();
}

class _SimpleTodoAppState extends State<SimpleTodoApp> {
  // variable nilam
  TextEditingController taskInput = TextEditingController();
  List<String> List_tasks = [];
  var input ;

  // add method
  addButton(){
    // variable nilam
    input = taskInput.text;

    if ( input.isNotEmpty ){
      // Reload Page
      setState(() {
        List_tasks.add(input);
        taskInput.clear();

        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text("Successfully added your task ${input}")
            )
        );

      });
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text("Please Enter your task")
          )
      );
    }



 }

 // delete method
  deleteButton(int IndexDelete){
   // Reload Page
   setState(() {
     List_tasks.removeAt(IndexDelete);
   });

  }

  // update method for List a new data rakha
  updateButtton(String NewData, int index) {
    if (NewData.isNotEmpty){
      // Reload Page
      setState(() {
        List_tasks[index] = NewData;
        Navigator.pop(context);
      });
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text("Successfully updated your task ${NewData}")
          )
      );
    }
  }


  // edit method
  editButton(int index){
    TextEditingController CurrentData = TextEditingController(text: List_tasks[index]);

    showDialog(
        context: context,
        builder: (context)=>AlertDialog(

         title: Text("Editing Task"),
         content: TextField(
           controller: CurrentData,
         ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white
              ),
                onPressed: (){
                  Navigator.pop(context);
                  },
                child: Text("Cancel")
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black
              ),
                onPressed:(){
                  updateButtton(CurrentData.text,index);
                  },
                child: Text("Update")
            )
          ],
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleTodoApp"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // TextField and Button
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(

              children: [
                // TextField .................................................
                Expanded(
                    child: TextField(
                      controller: taskInput,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                          hintText: "Enter your task ",
                          labelText: "TASK",

                      ),
                    )
                ),
                SizedBox(width: 10,),
                // Add Buttton...........................................
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(width: 5,color: Colors.blue.shade100)
                    )

                  ),
                    onPressed: addButton,
                    child: Text("Add",
                      style: TextStyle(
                               color: Colors.white
                    ),
                    )
                )
              ],
            ),
          ),
          // Sizebox, Container, Expanded er vitore ListView show
          Expanded(

            child: Card(
              child: ListView.builder(
                  itemCount: List_tasks.length,
                  itemBuilder: (context,index){
                    return Card(
                      // background COLOR
                      surfaceTintColor: Colors.black87,
                      shadowColor: Colors.orange,
                      borderOnForeground: true,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 2,color: Colors.black)
                      ),

                      child: ListTile(
                        leading: Icon(Icons.task),
                        title: Text(List_tasks[index]),
                        trailing: //Icon(Icons.delete)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed:(){
                              editButton(index);
                            }, icon: Icon(Icons.edit)),
                            IconButton(onPressed:(){
                              // Delete Button
                              deleteButton(index);
                            }, icon: Icon(Icons.delete)),

                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
          )

        ],
      ),
    );
  }
}
