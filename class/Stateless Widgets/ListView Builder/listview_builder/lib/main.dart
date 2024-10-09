import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    print( "Device width : ${MediaQuery.of(context).size.width}");
    print( "Device width : ${MediaQuery.of(context).size.height}");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Builder Demo", 
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,

        ) ,

        body : ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index){
            return   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text(
                  "Action Movie",
                  style : TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child : Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://m.media-amazon.com/images/I/71qV6mieBvL._AC_UF350,350_QL80_.jpg"),
                      )
                    ],
                  ),
                ),
              ],
            
        
            );
            
            
          }
        ),
              
           
        ),
    );
  }
}