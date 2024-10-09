import 'package:flutter/material.dart';

void main(){
  runApp (const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


@override
Widget build (BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home : Scaffold(
      appBar : AppBar(
        title : const Text (
          "Column with Scroll",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
        children: [
          Image.network("https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg"),
          Container(
            height :150,
            width: 500,
            color :Colors.amberAccent,
          ),

          Image.network("https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg"),
          Container(
            height :150,
            width: 500,
            color :Colors.amberAccent,
          ),
          Image.network("https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg"),
          Container(
            height :150,
            width: 500,
            color :Colors.amberAccent,
          ),
        ],
        ),
      ),
    ),

  );
}
}