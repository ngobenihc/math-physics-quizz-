import 'dart:async';
import 'package:ana/selectQizz.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  startTimer(){
    Timer(const Duration(seconds: 3),() async {
      //send user to home screen
      Navigator.push(context, MaterialPageRoute(builder:(c)=>  MyMainPage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Center(child: Text("The Quiz App  ")),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Image.asset("images/mainApp.jpg"),
            )
            ),
            // const Text("The Quiz App", style: TextStyle(fontSize: 20,),
            // ),


          ],
        ),
      ),
    );
  }
}



