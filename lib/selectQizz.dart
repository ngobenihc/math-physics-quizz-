
import 'package:ana/randomQueston/mainRandom.dart';
import 'package:flutter/material.dart';



class MyMainPage extends StatefulWidget {


  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Center(child: Text("pick the one lift giver or passenger ")),),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [

              const SizedBox(height: 10),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder:(c)=> Quizzler()));


                  },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                    ),
                    child: const Text("Random Quizzer"),
                  ),


                  // ElevatedButton(onPressed: (){
                  //
                  //
                  //   Navigator.push(context, MaterialPageRoute(builder:(c)=> const PassengerLoginScreen()));
                  //
                  //
                  // },
                  //   style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.blueGrey
                  //   ),
                  //   child: const Text("LogIn as passenger"),
                  // ),
                ],
              ),


              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
