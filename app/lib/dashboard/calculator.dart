

import 'package:app/dashboard/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
var resultt = "";

button(var textt){
  return ElevatedButton(onPressed: (){setState(() {
    resultt= resultt+textt;
    
  });}, child: Text(textt));
}

  clearr(){
    setState(() {
      resultt= "";
    });
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("$resultt",style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold
                  ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: clearr , child: Text("C")),
                    button("%"),
                    button("+/-"),
                    button("/"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                     button("7"),
                     button("8"),
                     button("9"),
                     button("X"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button("4"),
                    button("5"),
                    button("6"),
                    button("-"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button("1"),
                    button("2"),
                    button("3"),
                    button("+"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button("0"),
                    button("."),
                    button("="),
                    button("#")
                  ],
                )
              ],
             ),
           ),
    );
    
  }
}