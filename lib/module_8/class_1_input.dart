// Flutter SDK import
import 'package:flutter/material.dart';

class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      // Section AppBar
      appBar: AppBar(
          title: Text("This is appbar section"),
          backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              // image showing from network
              Image.network(
                'https://thumbnail.imgbin.com/19/17/5/imgbin-real-madrid-c-f-portugal-national-football-team-football-player-logo-football-ppiYy960kwpUQ15P6an3brmQu_t.jpg'
                    ,
              width: 310,
              height: 120,
            ),
              // image showing from "assets" folder
              Image.asset("assets/ur.png",
              width: 100,
              height: 100,
              ),

              TextField(
              controller: phoneController,

              keyboardType: TextInputType.phone,

              maxLength: 11,

              cursorColor: Colors.red,

              decoration: InputDecoration(

                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.yellow
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue)
                ),

                // background color
                filled: true,
                fillColor: Colors.blueGrey.shade100,
                contentPadding: EdgeInsets.all(50),

                // hinttext
                hintText: "Enter your Phone Number.......",
                hintStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
                // helpertext
                helperText: "0178***",
                helperStyle: TextStyle(
                  color: Colors.blue,
                ),
                // labeltext
                labelText: "phone number",
                labelStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 15
                ),

              ),
            ),
            SizedBox(height: 25,),
            // password text field ........................................
            TextField(
              controller: passwordController,

              keyboardType: TextInputType.text,

              obscureText: true,

              maxLength: 11,

              cursorColor: Colors.red,

              decoration: InputDecoration(

                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: Colors.yellow
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.blue)
                ),

                // background color
                filled: true,
                fillColor: Colors.blueGrey.shade100,
                contentPadding: EdgeInsets.all(50),

                // hinttext
                hintText: "Enter your password.......",
                hintStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
                // helpertext
                helperText: "password*****",
                helperStyle: TextStyle(
                  color: Colors.blue,
                ),
                // labeltext
                labelText: "password",
                labelStyle: TextStyle(
                    color: Colors.orange,
                    fontSize: 15
                ),

              ),
            ),
            // gap
            SizedBox(height: 25,),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  onPressed: (){
                    print("${phoneController.text} , ${passwordController.text}");


                    if (passwordController.text.length < 6){
                      print("password  ${passwordController.text} must be in 6 characters");
                    }
                    // buttton a click korarr por clear korte hobe
                    phoneController.clear();
                    passwordController.clear();


                  },
                  child: Text(
                    "elevated button submit",
                     style: TextStyle(
                         color: Colors.white
                     ),
                  )

              ),
            ),
            // sizebox diye textfield er akar deya jay
            SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.red.shade100,
                  hintText: "checking sizebox",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
