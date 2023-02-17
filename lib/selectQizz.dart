import 'package:ana/randomQueston/random_splash_screen.dart';
import 'package:ana/scienceQizz/science_splash_screen.dart';
import 'package:flutter/material.dart';
import 'mathQizz/maths_splash_screen.dart';



class MyMainPage extends StatefulWidget {


  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Center(child: Text("Select the subject quiz that you want to answer ")),),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [

              const SizedBox(height: 20),


              ElevatedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder:(c)=> const RandomSplashScreen()));


              },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey
                ),
                child: const Text("Random Quizzer"),
              ),

              const SizedBox(height: 50),


              ElevatedButton(onPressed: (){


                Navigator.push(context, MaterialPageRoute(builder:(c)=>  MathsSplashScreen()));


              },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey
                ),
                child: const Text("Mathematics Quizzer"),
              ),

              const SizedBox(height: 50),


              ElevatedButton(onPressed: (){


                Navigator.push(context, MaterialPageRoute(builder:(c)=>  PhysicsSplashScreen()));


              },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey
                ),
                child: const Text("Physical Science Quizzer"),
              ),
            ],


          )
      ),
        ),
    );
  }
}
