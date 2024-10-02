
import 'package:flutter/material.dart';
void main(){
  
  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title : "CORE2WEB",
      home : TestApp (),

    );
  }

}

class TestApp extends StatelessWidget{
  const TestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        title : const Text("First App"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.red,
          shape:BoxShape.circle,
        ),
      )
      );
  }
}