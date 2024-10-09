import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold (
      appBar : AppBar(  
        title : const Text (
          "Column Demo",
          style : TextStyle(
            fontSize: 30, 
            fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body : Center(
        child :Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Container(
            
            height: 100,
            width: 200,
            color: Colors.red,
            
            
            ),
            Container(

              height: 100,
              width: 200,
              color :Colors.red,

            ),
            Container(

              height: 100,
              width: 200,
              color : Colors.red,
              
            ),
        ],
      ),
      
      ),
    ),
    );
 
  }
}

        
