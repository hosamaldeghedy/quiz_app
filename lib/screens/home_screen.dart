import 'package:flutter/material.dart';
import 'package:quiz_app/screens/levels_screen.dart';
import 'package:quiz_app/widgets/first_screen_button.dart';
import 'package:quiz_app/widgets/welcome_image_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1f1147),
        body: Column(

          children: [
          WelcomeImageWidget(),
            Text.rich(
              textAlign: TextAlign.center ,
              TextSpan(

              text: "let's play ! \n" ,
                  style : TextStyle(

                color: Colors.white,
                fontSize: 40,
                    fontWeight: FontWeight.bold
            ) ,
                children: [
                  TextSpan(
                    text: 'Play Now & level up \n' ,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 30,
            )
                  )
                ] ,

            )
        ,
      ) ,

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 20),
              child: Column(
                children: [
                  FirstScreenButton(buttonText: "Play Now", onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LevelsScreen() )) ;
                  }, buttonColor: Colors.indigo) ,
                  SizedBox (height: 20) ,
                  FirstScreenButton(buttonText: 'About!', onPressed: (){
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return   AlertDialog(
                          title: Text("Notice"),
                          content: Text("Launching this missile will destroy the entire universe. Is this what you intended to do?"),
                          actions: [
                            TextButton(
                              child: Text("Cancel"),
                              onPressed:  () {
                                Navigator.pop(context) ;
                              },
                            ),
                            TextButton(
                              child: Text("Launch missile"),
                              onPressed:  () {},
                            ),
                          ],
                        );
                      },
                    );
                  }, buttonColor: Color(0xff1f1147) ,
                  borderside: BorderSide(width: 5 , color: Colors.deepPurple ), )
                ],
              ),
            )
      ],
        ),
      ),
    );

  }
}



