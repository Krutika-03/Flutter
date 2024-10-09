import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar : AppBar(
          title : const Text (
            "Static ListView demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,

        ),
        body : ListView(
          children: [
            Image.network("https://images.nightcafe.studio/jobs/YXpUflH56pkmgLf7mFQD/YXpUflH56pkmgLf7mFQD--1--j19oi_6.9444x.jpg?tr=w-1600,c-at_max",
            width: 7000,),
            const Icon(
              
              Icons.favorite,
              color: Color.fromARGB(255, 248, 5, 5),

            ),
            const Text(
              "Asthetic Painting...",


              style : TextStyle(
                letterSpacing: BorderSide.strokeAlignInside,
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
              
            ),
            Image.network("https://imgv3.fotor.com/images/gallery/elegant-lady-with-flowers-in-headband-gray-hair-created-by-fotor-ai-image-generator.png"),
            GestureDetector(
              onTap: () {
                print("button pressed");
              },
              child: Container(
                color: Colors.amber,
                height: 50,
                child: const Text(
                  "pressed me"),

              ),
            )
            

          ],
        ),
      ),
    );
  }
}
