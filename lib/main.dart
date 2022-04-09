import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            titleTextStyle: TextStyle(
              fontFamily: 'Courgette',
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
            centerTitle: true,
            title: Text('Click the Dice'),
            backgroundColor: Colors.blue[900],
          ),
          body: Dice(),
        ),
      )
  );
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceNum =1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Expanded(
        child:Padding(
          padding: const EdgeInsets.all(30.0),

          child: FlatButton(
            onPressed: () {
              setState(() {
               diceNum = Random().nextInt(6)+1;
              });
            },
            child: Image.asset(('images/dice_$diceNum.png')
            ),
          ),
        ),
      ),
    );

  }
  }



