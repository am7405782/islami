import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radio extends StatelessWidget {
  const radio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 50),
             child: Image.asset(
                 "assets/images/radioim.jpg"
             ),
           ),

         ],
       ),
     ),
    );
  }
}