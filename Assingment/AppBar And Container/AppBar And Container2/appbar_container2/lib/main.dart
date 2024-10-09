import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
          "core2web",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.white
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,

          actions: [
        IconButton(
          icon: const Icon(Icons.add_home_rounded),
          color: Colors.white,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.ad_units),
          color: Colors.white,
          onPressed: () {},
          ),
      ],
          
      ),
    ),
    );
  }
}
