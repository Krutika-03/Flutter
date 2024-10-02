import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  


  @override
  Widget build(BuildContext context) {
    return const MaterialApp (
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }

}
  class QuizApp extends StatefulWidget{
    const QuizApp({super.key});

    @override 
    State createState() => _QuizAppState();


  }

  class _QuizAppState extends State{
    List<Map>allQuestions =[
      {
        "question": "1) Which State has the lowest per capita income in India?",
        "options" : ["A. Bihar", "B. Orissa", "C. Rajasthan", "D. Gujrat"],
        "correctAnswer":1
      },

      {
        "question": "2) Which of the following crops helps in nitrogen fixation?",
        "options" : ["A. Rice", "B. Wheat", "C. Beans", "D. Maize"],
        "correctAnswer":2
      },

      {
        "question": "3) The name of Indian's First carrier is",
        "options" :["A. INS Vikrant", "B. INS Nilgiri", "C. INS Kukri", "D. INS Himgiri"],
        "correctAnswer":0
      },
      {
        "question": "4) What is the name of the weak zone of the earth’s crust?",
        "options" : ["A. Seismic", "B. Cosmic", "C. Formic", "D. Anaemic"],
        "correctAnswer":0
      },
      {
        "question": "5) Where was India’s first national Museum opened?",
        "options" : ["A. Delhi", "B. Hyderabad", "C. Rajasthan", "D. Mumbai"],
        "correctAnswer":3
      }



    ];

    int currentQuestionIndex =0;
    int selectedAnswerIndex = -1;
    int  count = 0;
    bool questionPage = true;
    

    WidgetStateProperty<Color?>checkAnswer(int answerIndex){
      if (selectedAnswerIndex != -1) {
        if(answerIndex ==  allQuestions[currentQuestionIndex] ["correctAnswer"]) 
        {
          return const WidgetStatePropertyAll(Colors.green);
          } else if (selectedAnswerIndex==answerIndex){
            return const WidgetStatePropertyAll(Colors.red);
          }else{
            return const WidgetStatePropertyAll(null);
          }
        }else {
          return const WidgetStatePropertyAll(null);
        }
    }
    
    
    @override
    Widget build(BuildContext context) {
      return isQuestionScreen();
    }
    Scaffold isQuestionScreen(){
      if (questionPage == true){
    
      return  Scaffold(
        appBar: AppBar(
          title:const Text(
            "Quiz App",
            style : TextStyle(
              fontSize : 25,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),

          ),
          centerTitle: true,
          backgroundColor: Colors.teal
        ),

        body : Column(
          children: [
            const  SizedBox(
              height: 30,
            ),
            Row (
              children: [
                 const SizedBox(
                  width: 115,
                ),
                Text (
                "Question :   ${currentQuestionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,

                  ),
                ),
                
              ],
             ),
              const SizedBox(
                
                height: 35,


              ),
              SizedBox(
                width: 800,
                height: 80,
                child: Text(
                  allQuestions[currentQuestionIndex] ["question"],
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ), 

              ///for option 1
  
              SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  
                  if(selectedAnswerIndex==-1){
                    selectedAnswerIndex=0;
                    if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                      count++;
                    }
                    setState(() { });
                  }
                }, 
                child: Text(
                  allQuestions[currentQuestionIndex]["options"][0],
                  
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
               
              ),
            ),
              const SizedBox(
                height: 50,
              ),

              ///for option 2
              SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if(selectedAnswerIndex==-1){
                    selectedAnswerIndex=1;
                    if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                      count++;
                    }
                    setState(() { });
                  }
                }, 
                child: Text(
                  allQuestions[currentQuestionIndex]["options"][1],
                  
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
               
              ),
            ),
              const SizedBox(
                height: 50,
              ),

              ///for option 3
              SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if(selectedAnswerIndex==-1){
                    selectedAnswerIndex=2;
                    if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                      count++;
                    }
                    setState(() { });
                  }
                }, 
                child: Text(
                  allQuestions[currentQuestionIndex]["options"][2],
                  
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
               
              ),
            ),
              const SizedBox(
                height: 50,
              ),

              ///for option 4
              SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if(selectedAnswerIndex==-1){
                    selectedAnswerIndex=3;
                    if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
                      count++;
                    }
                    setState(() { });
                  }
                }, 
                child: Text(
                  allQuestions[currentQuestionIndex]["options"][3],
                  
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
               
              ),
            ),
              const SizedBox(
                height: 50,
              ),
              
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if(currentQuestionIndex < allQuestions.length -1){
                currentQuestionIndex++;
              }else{
                questionPage = false;
              }
              selectedAnswerIndex = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.teal,
          child: const Icon(
            Icons.forward,
            color: Colors.black,
          ),
          ),
      );

    }else{
      return Scaffold(
        appBar : AppBar (
          title : const Text (
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0JJfgwREH8nXQ7OFk0hShAcosMi8L8IwLkA&s",

              height: 300,
              ),
              const SizedBox( height: 30,),
              Text (
                  "Score : $count/${allQuestions.length} ",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
               ),
               const SizedBox(
                height: 20,
               ),
               SizedBox(
                height: 30,
                width: 130,
                child: ElevatedButton(
                  onPressed:() {
                    questionPage =true;
                    currentQuestionIndex=0;
                    count=0;
                    setState(() {});
                  },
                    child : const Text("RESTART",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    ),
                
               ),
              ),
             
            ],
          ),
        ),
      );
    }
 
  }
  }
  
  
  
  