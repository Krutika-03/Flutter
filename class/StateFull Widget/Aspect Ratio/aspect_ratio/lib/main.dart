import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController nameController = TextEditingController();

  String? myname;

  List<String>playerList = [];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title : const Text(
            "Aspect Ratio Demo",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 11, 138, 138),
        ) ,
        
        body: Center(
          child: Container(
            height: 260,
            width: 384,
            color: Colors.pink,
            child : Image.network("https://d38b044pevnwc9.cloudfront.net/cutout-nuxt/enhancer/1.jpg"),
            
          ),)
        ),
    );
  }
  

}
