import 'package:flutter/material.dart';

import 'Example.dart';

class Statefull_Lifecycle extends StatefulWidget {
  Statefull_Lifecycle({super.key}) {
    print("1) The is CONSTRUCTOR of Class of Statefull_Lifecycle");
  }

  @override
  State<Statefull_Lifecycle> createState() {
    print("2) This is createState");

    return _Statefull_LifecycleState();
  }
}

class _Statefull_LifecycleState extends State<Statefull_Lifecycle> {

  // variable nilam
  String name = "DemoClass";
  Color bdColor = Colors.red;

  @override
  void initState() {
    // TODO: implement initState
    print("3) initState");
    name = "ClassDemo";
    bdColor = Colors.green;
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("4) didChangeDependencies");
    name = "StateFULL LIFE cycle for didchangeDependencies";
    bdColor = Colors.yellow;
    super.didChangeDependencies();
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    print("5) deactivate");
    super.deactivate();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    print("6) dispose");
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State FULL er life Cycle "),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            InkWell(
              onTap: (){

                setState(() {

                    print("This setState from InkWell  ");
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => Example()
                    )
                    );

                }
                );
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: bdColor,
                ),
                child: Center(
                  child: Text(
                      "This is ${name}",
                  style: TextStyle(

                  ),
                  ),
                ),
              ),
            ),
          ],),
        ),
      )
    );
  }
}
