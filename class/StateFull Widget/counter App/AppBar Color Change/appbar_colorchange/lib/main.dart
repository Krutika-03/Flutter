import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarColorApp());
}

class AppBarColorApp extends StatefulWidget{
  const AppBarColorApp({super.key});

  @override
 State<AppBarColorApp>createState() => _AppBarColorAppState();

}

class _AppBarColorAppState extends State<AppBarColorApp> {
  bool colorChange = true;

  @override
  Widget build (BuildContext context){
    return   MaterialApp (
      debugShowCheckedModeBanner: false,
      title : "AppBar Color ",
      home : Scaffold(
        appBar : AppBar(
          title : const Text("AppBar Color "),
          centerTitle: true,
          backgroundColor: (colorChange) ? Colors.blueGrey : Colors.yellowAccent,
      ),
      body : const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Change AppBar color"),
          ],)
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           if(colorChange){
            colorChange = false;
           }else {
            colorChange = true;
           }
            setState(() {});
          },
          child: const Icon(Icons.add),
          ),
    )
    );
  }
}


