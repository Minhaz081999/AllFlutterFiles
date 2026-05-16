import 'dart:convert';

import 'package:flutter/material.dart';
// api calling import
import 'package:http/http.dart' as http;


class Apicalling extends StatefulWidget {
  const Apicalling({super.key});

  @override
  State<Apicalling> createState() => _ApicallingState();
}

class _ApicallingState extends State<Apicalling> {
  List products = [];
  bool isLoading = true;

  Future <void> getProducts () async{
    final url = Uri.parse("http://35.73.30.144:2008/api/v1/ReadProduct");
    final response = await http.get(url);
    //for testing api result
    print(response.body);
    print(response.statusCode);


    if(response.statusCode == 200){
      final jsonResponse = jsonDecode(response.body);

      setState(() {
        products = jsonResponse["data"];
        isLoading = false;
      });
    }else{
      isLoading = false;
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API calling "),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          Icon(Icons.sunny)
        ],
      ),
      body:  isLoading
          ?
          Center(
              child: CircularProgressIndicator()
          )
          :
          GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2.5,
              mainAxisSpacing: 10,
              childAspectRatio: 0.5,
          ),
        itemCount: products.length,
        itemBuilder: (context,index){
            final items = products[index];
            return Card(
              child: Container(

                child: Column(
                  children: [
                    SizedBox(
                      height: 140,
                      child: Image.network(items["Img"].toString(),
                      fit: BoxFit.cover,)
                    ),
                    Text(items["ProductName"],
                      style: TextStyle(
                      fontSize: 19
                    ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text("Price\$${items["UnitPrice"]}")
                  ],
                ),
              ),
            );
        },

      ),
    );
  }
}
