import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../moduels/my_theam.dart';
import 'headithModel.dart';

class headit extends StatefulWidget {
  @override
  State<headit> createState() => _headitState();
}

class _headitState extends State<headit> {
  List<String>haditData=[];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

    );
  }

void loadFileHadith(){
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String>AhaditContent=value.split("#");
      for(int i=0;i<AhaditContent.length;i++){
        List<String>lines=AhaditContent[0].trim().split("\n");
        String title=lines[0];
        lines.removeAt(0);
        List<String>Countent=lines;
        print(title);
        AhadthModel headthModel= AhadthModel(title,Countent);
        haditData.add(headthModel as String);


      }

    }
    ).catchError((error){
      print(error.toString());
    });
  }
}
