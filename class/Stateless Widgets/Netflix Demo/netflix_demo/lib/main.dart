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
      home : Scaffold(
        appBar: AppBar(
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Colors.red,
            ),
          ),

          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: ListView.builder(
          itemCount: 20,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return  Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black87,
                  child: const Text (
                  "Action Movie",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    
                  ),
                  
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
                        color: Colors.black87,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyqUS8ekNQiwImzeangizrFxyNMPqMmw-9Qg&s",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLVsxWLnVW-oBgIcWSs_241GG19O3fk_NeAQ&s",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUQ3tB_Z5X6rfehzKWVC9udWYYklUJS2DPw&s",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://i.redd.it/jb5aaywg7sy71.jpg",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://www.movieposters.com/cdn/shop/products/3998dd3fa7e628e415e9805b960bec61_480x.progressive.jpg?v=1573592743",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0hZTW45PKs7eJqqyKj8djWpjtpmg9KTMy7A&s",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyqUS8ekNQiwImzeangizrFxyNMPqMmw-9Qg&s",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyqUS8ekNQiwImzeangizrFxyNMPqMmw-9Qg&s",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLVsxWLnVW-oBgIcWSs_241GG19O3fk_NeAQ&s",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUQ3tB_Z5X6rfehzKWVC9udWYYklUJS2DPw&s",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://i.redd.it/jb5aaywg7sy71.jpg",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://www.movieposters.com/cdn/shop/products/3998dd3fa7e628e415e9805b960bec61_480x.progressive.jpg?v=1573592743",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0hZTW45PKs7eJqqyKj8djWpjtpmg9KTMy7A&s",
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        color: Colors.black87,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyqUS8ekNQiwImzeangizrFxyNMPqMmw-9Qg&s",
                        ),
                      ),
                    ],
                  )
                )
              ],);
          }
        ),
      ),
      
    
    );
  }
}
