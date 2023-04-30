import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/moduels/my_theam.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  int Counter=0;

  int index=0;

  List<String>words=[
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(

            margin: EdgeInsets.only(
              top: size.height*0.08,
              left: size.width*0.16
            ),
            height: MediaQuery.of(context).size.height*0.46 -60,

            child: Stack(

              children: [
                Positioned(
                  left: size.width*0.28,
                    child: Image.asset(
                      "assets/images/head_sebha.png",
                    ),

                ),
                Positioned(
                  bottom: size.height*0,
                  child: GestureDetector(
                    onTap:onPress,
                    child: Image.asset(
                        "assets/images/body_sebha.png" ,
                      ),
                  ),
                ),


              ],
            ),
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          Center(
            child: Text(
                "عدد التسبيحات",
              style: GoogleFonts.elMessiri(
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          Container(
            height: 88,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: MyThemeData.lightColor,
            ),

            child: Text(
              "$Counter",
              style: TextStyle(
                fontSize: 25,

              ),
            ),
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          Container(
            height: 50,
            width: 110,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: MyThemeData.lightColor,
            ),
            child: Text(
              words[index],
              style: GoogleFonts.elMessiri(
                fontSize: 20,
                color: Colors.white
              ),

            ),
          ),

        ],
      ),


    );
  }

  void onPress(){
    Counter++;
    if(Counter==30){
      if(index!=words.length -1){
        index++;
      }else{
        index=0;
      }
      Counter=0;
    }
    setState(() {

    });
  }
}
