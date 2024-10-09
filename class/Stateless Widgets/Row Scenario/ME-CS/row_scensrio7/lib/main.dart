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
    debugShowCheckedModeBanner: false,
    home : Scaffold(
      appBar :AppBar(
        title: const Text(
          "Row Demo",

          style : TextStyle(fontSize :30, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        color : Colors.indigo ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.teal,
            )
          ],),
      )
    )
  );
}
}


