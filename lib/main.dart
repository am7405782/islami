import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/moduels/my_theam.dart';
import 'package:islami/models/quran/sorsaCountant.dart';


import 'models/home/Home.dart';
import 'Splach.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      darkTheme:MyThemeData.darkTheme,
      theme: MyThemeData.lightTheme,
      title: "islami",
      debugShowCheckedModeBanner: false,
      initialRoute: Splach.namekey,
      routes: {
        Home.nameKey: (_) => Home(),
        Splach.namekey:(_)=>Splach(),
        SoraCountant.namekey:(_)=>SoraCountant(),

      },
    );
  }

}