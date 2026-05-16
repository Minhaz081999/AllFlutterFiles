import 'package:flutter/material.dart';


class LoginPage_2  extends StatelessWidget {
   LoginPage_2 ({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordControleer = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login page form created ")),
          backgroundColor: Colors.blue,
        ),
        body:Column(
          children: [
            // IMAGE from "assets" folder.......................................
            Image.asset("assets/ur.png",
              height: 50,
          ),
          Text("Login page form will be created........... "),
          // FORM field ........................................................
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Text("Phone Number "),
                // Phone Number Form Field
                TextFormField(

                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "phone number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator : (value){
                      if (value == null || value.isEmpty){
                        return "plz enter your phone number ";
                      }else if (value.length != 11){
                        return "plz enter correct number";
                      }
                      else{
                        return null;
                      }
                    }


                ),
                SizedBox(height: 25,),
                Text("password "),
                // Password Form Field
                TextFormField(
                    controller: passwordControleer,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "password ",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator : (value){
                      if (value == null || value.isEmpty ){
                        return "plz enter your password ";
                      }else if (value.length <= 6 ){
                        return "enter more than 6 characters";
                      }else{
                        return null;
                      }
                    }
                ),
                SizedBox(height: 25,),
                // submit with back buttton in appBar
                // SizedBox(
                //   height: 50,
                //   width: 200,
                //   child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.blueAccent,
                //         foregroundColor: Colors.white,
                //       ),
                //       onPressed: (){
                //         if (_formKey.currentState!.validate()){
                //           //going to next page with back button
                //           Navigator.push(
                //               context, MaterialPageRoute(
                //               builder: (context) => Home()
                //           )
                //           );
                //           // going to next page without back button
                //           // Navigator.pushReplacement(
                //           //     context, MaterialPageRoute(
                //           //     builder: (context) => Home()
                //           // )
                //           // );
                //           ScaffoldMessenger.of(context).showSnackBar(
                //               SnackBar(
                //                   content: Text("login successfully with snackbar")
                //               )
                //           );
                //         }
                //       },
                //       child: Text("submit with back buttton in appBar")),
                // ),
                // going to next page without back button
                // SizedBox(
                //   height: 50,
                //   width: 200,
                //   child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.blueAccent,
                //         foregroundColor: Colors.white,
                //       ),
                //       onPressed: (){
                //         if (_formKey.currentState!.validate()){
                //
                //           // going to next page without back button
                //           Navigator.pushReplacement(
                //               context, MaterialPageRoute(
                //               builder: (context) => Home()
                //           )
                //           );
                //           ScaffoldMessenger.of(context).showSnackBar(
                //               SnackBar(
                //                   content: Text("login successfully with snackbar")
                //               )
                //           );
                //         }
                //       },
                //       child: Text("submit without back buttton ")),
                // ),
                //going to next page with back button
                // SizedBox(
                //   height: 80,
                //   width: 200,
                //   child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.blueAccent,
                //         foregroundColor: Colors.white,
                //       ),
                //       onPressed: (){
                //         if (_formKey.currentState!.validate()){
                //           //going to next page with back button
                //           Navigator.push(
                //               context, MaterialPageRoute(
                //               builder: (context) => Home_2()
                //           )
                //           );
                //
                //           ScaffoldMessenger.of(context).showSnackBar(
                //               SnackBar(
                //                   content: Text("login successfully with snackbar")
                //               )
                //           );
                //         }
                //       },
                //       child: Text("submit with back buttton ")),
                // ),
                // parameter pass through button......................
                SizedBox(
                  height: 80,
                  width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: (){
                        if (_formKey.currentState!.validate()){
                          // 1) going to next page with back button............
                          // Navigator.push(
                          //     context, MaterialPageRoute(
                          //     builder: (context) => Dashborad(phone: phoneController.text, pass : passwordControleer.text)
                          // )
                          // );
                          // 2) multiple parameter pass korbo notun vabe........................
                          Navigator.pushNamed(context, "MultipleParameterPass",
                              arguments: {
                                "phone" : phoneController.text,
                                "password" : passwordControleer.text,
                              }
                          );

                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text("login successfully with snackbar")
                              )
                          );
                        }
                      },
                      child: Text("parameter pass ")),
                ),

              ],),
            ),
          )
        ],
        )



    );
  }
}
