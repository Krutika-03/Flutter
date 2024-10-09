import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar : AppBar(
          title: const Text(
            "The title Bar",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.white
              
            ),
          ),
          
          backgroundColor: Colors.deepPurple,
          actions: [
        IconButton(
          icon: const Icon(Icons.access_time),
          color: Colors.white,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.add_comment_outlined),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
          
        ),

      ),
    );
    
     
    
  }
}
