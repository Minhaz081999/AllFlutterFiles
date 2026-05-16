import 'package:flutter/material.dart';


class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  // variable nilam
  bool isPasswordShow = true;
  bool isFavorite = true;
  // ToggelButton method
  ToggelButton(){
    setState(() {
      isPasswordShow = !isPasswordShow;
    });

  }
  // Toggel Favourite method
  FavToggelButtotn(){
    setState(() {
      isFavorite = !isFavorite;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example page from InkWell (Click able button)"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              obscureText: isPasswordShow,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.check),
                suffixIcon: IconButton(onPressed: (){
                  ToggelButton();
                }, icon: isPasswordShow 
                    ?
                    Icon(Icons.visibility_off)
                    :
                    Icon(Icons.remove_red_eye)
                )
              ),
            ),
            IconButton(onPressed: (){
              FavToggelButtotn();
            },

                color: isFavorite ? Colors.red : Colors.grey,
                 icon: isFavorite ?
                 Icon(Icons.favorite,size: 100,) : Icon(Icons.favorite_border,size: 100,),
            )
          ],
        ),
      )
    );
  }
}
