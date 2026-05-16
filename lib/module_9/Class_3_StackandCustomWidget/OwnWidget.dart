import 'package:flutter/material.dart';
import 'package:flutter_widget/module_9/Class_3_StackandCustomWidget/CustomWidget/CityCard.dart';

class Ownwidget extends StatelessWidget {
  const Ownwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Own Widget"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(

            children: [
              // custom widget calling here................
              CityCard(image: "Marvel's_SpiderMan.png", title: "one ", rating: "10",),
              CityCard(image: "fc_24.png", title: "two", rating: "8",),
              CityCard(image: "17040911.jpg", title: "three", rating: "7",),
              CityCard(image: "ur.png", title: "Cristiano Ronaldo", rating: "GOAT",),


            ],
          ),
        ),
      ),
    );
  }
}
