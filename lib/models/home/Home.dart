import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../headit/headit.dart';
import '../quran/quran.dart';
import '../radio/radio.dart';
import '../sebha/sebha.dart';

class Home extends StatefulWidget {
  static const String nameKey = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;

  List<Widget>Screen=[
    quran(),
    sebha(),
    headit(),
    radio(),

  ];

  @override
  Widget build(BuildContext context) {
     return Stack(
       children: [
         Container(
           width: double.infinity,
           child: Image.asset(
             "assets/images/background.png",
             fit: BoxFit.fill,
           ),
         ),
         Scaffold(
           appBar: AppBar(
           title: Text(
             "Islami",
             style: Theme.of(context).textTheme.bodySmall,
           ),
         ),
           bottomNavigationBar: BottomNavigationBar(
             currentIndex: index,
             onTap: (value) {
               index=value;
               setState(() {

               });
             },
             items: [
               BottomNavigationBarItem(
                   icon: ImageIcon(AssetImage("assets/images/quran.png")),
                   label:  "quran",

               ),
               BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage("assets/images/sebha_icon.png")),
                 label:  "sebha",
               ),
               BottomNavigationBarItem(
                   icon: ImageIcon(AssetImage("assets/images/hedith_icon.png")),
                   label: "hadith",
               ),
               BottomNavigationBarItem(
                   icon: ImageIcon(AssetImage("assets/images/radio.png")),
                   label:  "radio",
               ),

             ],
           ),
           body: Screen[index],
         ),
       ],
     );
  }
}
