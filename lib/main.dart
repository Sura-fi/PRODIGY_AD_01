// import 'dart:math';

import 'package:calculator_app/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
    final String title;
//  void Function()? onPressed;
   const MyHomePage({super.key, required this.title,
    // required this.onPressed
    });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

 int firstNum =0;
 int secNum=0;
String history='';
String textToDisplay='';
 late String res;
 late String operation;

void onClick(String btnVal){
  print(btnVal);
  if(btnVal == 'C'){
    textToDisplay='';
    firstNum = 0;
    secNum=0;
    res = '';
  }else if(btnVal =="AC"){
    textToDisplay='';
     firstNum = 0;
    secNum=0;
    res = '';
    history='';
  }else if(btnVal =="+" || btnVal=='-' || btnVal =='X'|| btnVal=='/'){
    firstNum = int.parse(textToDisplay);
    res = '' ;
    operation = btnVal;
  }else if(btnVal == '='){
    secNum = int.parse(textToDisplay);
    if(operation =='+'){
      res = (firstNum + secNum).toString();
      history = firstNum.toString() + operation.toString() + secNum.toString();
    }
    if(operation =='-'){
      res = (firstNum - secNum).toString();
      history = firstNum.toString() + operation.toString() + secNum.toString();
    }
    if(operation =='*'){
      res = (firstNum * secNum).toString();
      history = firstNum.toString() + operation.toString() + secNum.toString();
    }
    if(operation =='/'){
      res = (firstNum / secNum).toString();
      history = firstNum.toString() + operation.toString() + secNum.toString();
    } }else{
    res = int.parse(textToDisplay + btnVal).toString();
  }
   setState(() {
    textToDisplay = res;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:const Text("Calculator app"),
      ),
      body: Container(
        decoration: const BoxDecoration(
         color: Colors.black
        ),
         child:   Column(
          mainAxisAlignment: MainAxisAlignment.end,
           children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                alignment: const Alignment(1.0, 1.0),
                child:  Text(
                  history, 
                  style:const TextStyle(fontSize:24, color: Colors.white))
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                alignment: const Alignment(1.0, 1.0),
                  child:  Text(
                    textToDisplay,
                    style: const TextStyle(fontSize: 48, color: Colors.white),
                  ),
              ),
            ),


             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [                       
                MyWidgets(
                  text: 'AC',
                  fillColor: 0xFF00BFFF ,
                  textSize: 16,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: 'C',
                  fillColor: 0xFF00BFFF ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '<',
                  fillColor: 0xFFf4d160,
                  textSize: 25,
                  textColor: 0xFF000000,
                  callBack:onClick,
                ),
                 MyWidgets(
                  text: '/',
                  fillColor: 0xFFf4d160 ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),            
               ] 
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [                       
                MyWidgets(
                  text: '9',
                  fillColor: 0xFF00BFFF ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack:onClick,
                ),
                 MyWidgets(
                  text: '8',
                  fillColor: 0xFF00BFFF ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '7',
                  fillColor: 0xFF00BFFF,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: 'X',
                  fillColor: 0xFFf4d160 ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),            
               ] 
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [                       
                MyWidgets(
                  text: '6',
                  fillColor: 0xFF00BFFF ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '5',
                  fillColor: 0xFF00BFFF ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '4',
                  fillColor: 0xFF00BFFF,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '-',
                  fillColor: 0xFFf4d160 ,
                  textSize: 30,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),            
               ] 
              ),  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [                       
                MyWidgets(
                  text: '3',
                  fillColor: 0xFF00BFFF ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '2',
                  fillColor: 0xFF00BFFF ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '1',
                  fillColor: 0xFF00BFFF,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '+',
                  fillColor: 0xFFf4d160 ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),            
               ] 
              ),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [                       
                MyWidgets(
                  text: '+/-',
                  fillColor: 0xFF00BFFF ,
                  textSize: 16,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '0',
                  fillColor: 0xFF00BFFF ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '00',
                  fillColor: 0xFF00BFFF,
                  textSize: 19,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),
                 MyWidgets(
                  text: '=',
                  fillColor: 0xFFf4d160 ,
                  textSize: 20,
                  textColor: 0xFF000000,
                  callBack: onClick,
                ),            
               ] 
              ),
          
            ],)
      ),
         );
      
    
  }
}

