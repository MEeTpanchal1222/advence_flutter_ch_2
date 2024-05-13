

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../2_intro/2_intro.dart';



class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAD4C8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                height: 400,
                width: 400,
                child: Image.asset(
                  'assest/intro.png',fit: BoxFit.contain,
                )),
            SizedBox(height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    "  Track your work \n and get the result",
                    style: TextStyle(
                      fontSize: 40
                    )
                ),
                SizedBox(height: 30,),
                SizedBox(
                  width: 380,
                  child: Text(
                    "Remember to keep track of your \n professional accompilshments",
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
                SizedBox(
                  height: 105,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 15,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:BorderRadius.circular(20)
                        ),
                      ),
                      Container(
                        height: 15,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                        ),
                      ),
                      Container(
                        height: 15,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              foregroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                          onPressed: () {},
                          child: Text("Skip",style: TextStyle(
                            fontSize: 30
                          ))),
                      Container(
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 16,
                                  color: Colors.black38,
                                  spreadRadius: -4,
                                  offset: Offset(0, 15)
                              )
                            ]
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color?>(Colors.black),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => IntroScreen2(),
                            ));
                          },
                          child: Text("NEXT",style: TextStyle(color: Colors.white,fontSize: 22),),

                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}