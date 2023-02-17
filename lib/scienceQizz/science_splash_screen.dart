import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_Science.dart';

class PhysicsSplashScreen extends StatefulWidget {

  @override
  State<PhysicsSplashScreen> createState() => _PhysicsSplashScreenState();
}

class _PhysicsSplashScreenState extends State<PhysicsSplashScreen> {

  startTimer(){
    Timer(const Duration(seconds: 3),() async {

      Navigator.push(context, MaterialPageRoute(builder:(c)=> Physicalscience()));
    }
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:  const Center(child: Text("The Physical science Quiz  ")),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Image.asset("images/scientific-formulas-mathematics-and-physics-calculus-on-class-chalkboard-algebra-and-physical-science-.jpg"),
            )),
            // const Text("The Quiz App", style: TextStyle(fontSize: 20,),
            // ),


          ],
        ),
      ),
    );
  }
}
