import 'package:flutter/material.dart';


class Flexible_Widget extends StatelessWidget {
  const Flexible_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 3,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red
                ),
                child: Text('1ST container with Flex = 3 height=${100} and width=${100}'),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.green
                ),
                child: Text('2nd container with Flex = 2 height=${100} and width=${100} '),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.orange
                ),
                child: Text('3rd container with Flex = 1 height=${100} and width=${100}'),
              ),
            ),
            Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue
                  ),
                )
            ),
            Flexible(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
