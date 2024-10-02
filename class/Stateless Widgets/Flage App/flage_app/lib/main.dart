
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title : "Indian Flag",
      home:MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget{
  const MyScreen({super.key});
  @override
  
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title : const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(33, 150, 243, 1),

        ),
        body:  Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                   Container(
                width: 5,
                height: 400,
                color: Colors.black,
              ),
              const SizedBox(width: 0,),

               Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  width: 250,
                  height: 35,
                  color: Colors.orange,
                ),
                Container(
                  width: 250,
                  height: 35,
                  color: Colors.white,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5PnLLBGDnOyGwXwAEB1Q_o0u53Opv00D3y4kIkuBlilLRQxck5ecS3mKfdxeGnb3a5Po&usqp=CAU"),
                ),
                Container(
                  width: 250,
                  height: 35,
                  color: Colors.green,
                ),
              ],

              )

            
                ],
              ),
              
                ]
              )
              


             
            
            
            ),

        );
      
    }
  }

