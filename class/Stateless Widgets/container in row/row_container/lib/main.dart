import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar : AppBar(
          title:const Text ("Container App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body:Center(
          child :  Row (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.purpleAccent,
                
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
            ],

          )
        )
        ),
      );
    
  }
}
