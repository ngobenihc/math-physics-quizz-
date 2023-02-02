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
      Navigator.push(context, MaterialPageRoute(builder:(c)=> MyMainPage()));
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
    return Material( child: Container(
      color: Colors.teal,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Image.asset("images/Ford.jpg"),
            )),
            const Text("Cliff Ride", style: TextStyle(fontSize: 20,),),


          ],
        ),
      ),
    ),
    );
  }
}
