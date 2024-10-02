import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

@override

Widget build(BuildContext context){
  return MaterialApp(
    home : Scaffold(
      appBar :AppBar(
        title: const Text(
          "Column Demo",

          style : TextStyle(fontSize :30, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
            )
          ],),
      )
    )
  );
}
}

