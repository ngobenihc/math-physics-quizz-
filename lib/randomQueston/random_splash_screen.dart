import 'dart:async';

import 'package:flutter/material.dart';

import 'mainRandom.dart';

class RandomSplashScreen extends StatefulWidget {
  const RandomSplashScreen({Key? key}) : super(key: key);

  @override
  State<RandomSplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<RandomSplashScreen> {

  startTimer(){
    Timer(const Duration(seconds: 1),() async {

      Navigator.push(context, MaterialPageRoute(builder:(c)=> RandomQuiz()));
    });
  }

  @override
  void initState() {

    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Center(child: Text("Critical Thinking Quiz Questions")),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Image.asset("images/criticalThinking.png"),

            )
            ),

          ],
        ),
      ),
    );
  }
}
