import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_Math.dart';

class MathsSplashScreen extends StatefulWidget {
  const MathsSplashScreen({Key? key}) : super(key: key);

  @override
  State<MathsSplashScreen> createState() => _MathsSplashScreenState();
}

class _MathsSplashScreenState extends State<MathsSplashScreen> {

  startTimer(){
    Timer(const Duration(seconds: 3),() async {

      Navigator.push(context, MaterialPageRoute(builder:(c)=> Mathematics ()));
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
      appBar: AppBar(title:  const Center(child: Text("The Maths Quiz Questions")),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Image.asset("images/maths.jpg"),
            )),
            // const Text("The Quiz App", style: TextStyle(fontSize: 20,),
            // ),


          ],
        ),
      ),
    );
  }
}
