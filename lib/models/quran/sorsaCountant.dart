import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/moduels/my_theam.dart';

import 'Suramodel.dart';

class SoraCountant extends StatefulWidget {
   static const String namekey="SoraCountant";

  @override
  State<SoraCountant> createState() => _SoraCountantState();
}

class _SoraCountantState extends State<SoraCountant> {
  List<String>Verses=[];

  @override
  Widget build(BuildContext context) {
    var arg=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(Verses.isEmpty){
      ReadFile(arg.index);
    }


    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage(
            "assets/images/background.png",

          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            arg.SuraNme,
            style: MyThemeData.lightTheme.textTheme.bodySmall,
          ),
          iconTheme: MyThemeData.lightTheme.iconTheme,
        ),
        body:ListView.separated(
          itemBuilder: (context, index) {
          return Directionality(
            textDirection: TextDirection.rtl,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      Verses[index],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
          );
        },
          itemCount:Verses.length,
          separatorBuilder: (context, index) => Divider(
            endIndent: 40,
            indent: 40,
            thickness: 1,
            color: MyThemeData.lightColor,


          ),

        ) ,

      ),
    );

  }

   Future<void> ReadFile(int index)async{
   String sura=  await rootBundle.loadString("assets/files/${index +1}.txt");
   List<String> lines=sura.split("\n");
   Verses=lines;
   print(lines);
 setState(() {

 });
   }
}
