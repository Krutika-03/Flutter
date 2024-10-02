import 'package:flutter/material.dart';

void main() {
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget{
  const PlayersApp({super.key});

  @override
 State<PlayersApp>createState() => _PlayersAppState();

}

class _PlayersAppState extends State<PlayersApp> {
  int _counter = 0;

  List<String>playerList =<String>[
    "https://images.news18.com/ibnlive/uploads/2024/05/ms-dhoni-csk-ipl-2024-bcci-3-2024-05-fcbfd490cd259acb98789277e52126e6.jpg?impolicy=website&width=640&height=480",
    "https://d3lzcn6mbbadaf.cloudfront.net/media/details/ANI-20240404181934.jpg",
    "https://cdn-wp.thesportsrush.com/2023/05/50381bde-untitled-design-36.jpg?format=auto&w=3840&q=75",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgaPx5UCNL3T9ldW2U8OgV4E9kN43vyUarJA&s",
  ];
  @override
  Widget build (BuildContext context){
    return   MaterialApp (
      debugShowCheckedModeBanner: false,
      title : "Players ",
      home : Scaffold(
        appBar : AppBar(
          title : const Text("Players App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
      ),
      body :  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              playerList[_counter],
              height: 300,
            ),
           
          ],),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           if(_counter < playerList.length-1){
            _counter++;
           }else {
            _counter = 0;
           }
            setState(() {});
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
          ),
    )
    );
  }
}


