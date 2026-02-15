import 'package:flutter/material.dart';
import 'dart:math';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  TextEditingController tcGuess = TextEditingController();
  late int answer;
  String result = '';
  int chance = 3;
  bool gameOver = false;
  @override
  void initState() {
    super.initState();
    _resetGame();
  }

  void _resetGame() {
    answer = Random().nextInt(10);
    chance = 3;
    result = '';
    gameOver = false;
    tcGuess.clear();
    setState(() {});
  }

  void _guess() {
    if (tcGuess.text.isEmpty) {
      setState(() {
        result = 'Please guess a number';
      });
      return;
    }
    int? userGuess = int.tryParse(tcGuess.text);
    if (userGuess == null || userGuess < 0 || userGuess > 9) {
      setState(() {
        result = 'Please guess a valid number 0-9';
        return;
      });
    }
    if (chance == 0 || gameOver) return;
    chance--;
    setState(() {
      if (userGuess! == answer) {
        result = 'Correct, you win!';
        gameOver = true;
      } else if (chance == 0) {
        result = 'Sorry you lose. The answer is $answer';
        gameOver = true;
      } else {
        result = userGuess < answer
            ? '$userGuess is too small, $chance chance(s) left!'
            : '$userGuess is too large, $chance chance(s) left!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Guess a number game', style: TextStyle(fontSize: 30)),
              SizedBox(height: 15),
              TextField(
                controller: tcGuess,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Guess a number 0-9'),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  result,
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: gameOver ? _resetGame : _guess,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.purple,
                      side: BorderSide(color: Colors.purple),
                    ),
                    child: Text(gameOver ? 'Replay' : 'Guess'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}