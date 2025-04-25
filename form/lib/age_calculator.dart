import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  _CalculatorScreenState createState() => _CalculatorScreenState();

}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String input = '';
  String output = '';

  void buttonPressed(String buttonText){
    setState(() {
      if(buttonText == 'C'){
        input = '';
        output = '';
      }else if(buttonText == '='){
        try{
          //Evaluate the expression
          output = evaluateExpression(input);
        }catch(e){
          output = 'Error';
        }
      }else{
        input += buttonText;
      }
    });
  }

  String evaluateExpression(String expr) {
    try{
      final expression = Expression.parse(expr); // Parse the expression
      final evaluator = ExpressionEvaluator();// Create an evaluator
      final result = evaluator.eval(expression,{});// Evaluate the expression
      return result.toString();
    }catch(e){
      return 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
      ),
      body: Column(
          children: <Widget>[
            Container(
              padding : EdgeInsets.all(20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                  input,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  output,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                ],
              ),
            ),
            //Calculator button layout (using row and column)
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        calcButton('7'),
                        calcButton('8'),
                        calcButton('9'),
                        calcButton('/'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        calcButton('4'),
                        calcButton('5'),
                        calcButton('6'),
                        calcButton('*'),
                      ]
                    ),
                    Row(
                      children: <Widget>[
                        calcButton('1'),
                        calcButton('2'),
                        calcButton('3'),
                        calcButton('-'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        calcButton('C'),
                        calcButton('0'),
                        calcButton('='),
                        calcButton('+'),
                      ],
                    ),
                  ],                                                      
              ),
            ),
          ),
          ],
        ),
      );
  }
  //Calculator button widget
  Widget calcButton(String buttonText){
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ), 
        ),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}