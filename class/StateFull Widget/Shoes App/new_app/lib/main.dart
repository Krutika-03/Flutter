import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

@override
 State<MyApp> createState() => _NewAppState();
}
 class _NewAppState extends State<MyApp> {
  
 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
      title: const Text(
        "Shoes",
        style: TextStyle(
          color : Colors.purple,
          
        ),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          color: Colors.purple,
          onPressed: () {},
        )
      ],
      
    ),

     body : Column(
      
      children:[
       SizedBox(
          height: 300,
          width: 1450,
          child: Image.network("https://5.imimg.com/data5/ANDROID/Default/2023/7/329147862/WU/AB/UF/192473731/product-jpeg.jpg"),
        ),
        const SizedBox(height: 40,
        width: 100,),
        const Text(
          "(Nike Air Force 1'07)",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),

        ),
        Row(
          children: [
      SizedBox(
          height: 30,
          width: 100,   
          
        child: ElevatedButton(
          
            onPressed: () { },
            child: const Text(
              "SHOES",
              style: TextStyle(
                color:Colors.purple,
              ),
              
            ),
            
            
          ),
          
          
        ),
        SizedBox(
          height: 30,
          width: 150,   
        child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              "FOOTWEAR",
              style: TextStyle(
                color: Colors.purple
              ),
            ),
            
          ),
          
        ),
        const  SizedBox(
          child: Text(
          "With iconic style and legendary comfort, the AF-1 was made to be worn on repeat.This iteration puts a fresh spin on the hoopsclassic with crisp leather, rea-echoing '80s' construction and reflective- design swoosh logos.",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            
          ),
          ),
          
          
          ),
          const SizedBox(
            height: 400,
          ),

          const Row(
            children: [
              SizedBox(
                child: Text(
                  "Quantity",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          )
        
        
      ],
    ),

      ],
      
    ),
      ),
    );
    
  
}
}





