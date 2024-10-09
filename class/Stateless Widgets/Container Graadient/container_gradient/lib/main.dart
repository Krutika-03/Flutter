

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    print( "Device width : ${MediaQuery.of(context).size.width}");
    print( "Device width : ${MediaQuery.of(context).size.height}");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container Gradient Demo", 
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink,

        ) ,

        body:Center(
          child: Container(
            height: 300,
            width: 300,
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors : [
                  Colors.redAccent,
                  Colors.black,
                ],
              ),
            ),
            child : const Text(
              "HOMIES",
              
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.white
              ),
            )
            ) 
            ,)
        )
    );
  }
}