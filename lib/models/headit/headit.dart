import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../moduels/my_theam.dart';
import 'ahaditCountent.dart';
import 'headithModel.dart';

class headit extends StatefulWidget {
  @override
  State<headit> createState() => _headitState();
}

class _headitState extends State<headit> {
  List<AhadthModel> haditData = [];

  @override
  Widget build(BuildContext context) {
    if (haditData.isEmpty) {
      loadFileHadith();
    }
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width * 1,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Image.asset("assets/images/hedith.png"),
              Container(
                width: double.infinity,
                color: MyThemeData.lightColor,
                height: 2,
              ),
              Text(
                "Ahadit",
                style: MyThemeData.lightTheme.textTheme.bodySmall?.copyWith(
                  fontSize: 30,
                ),
              ),
              Container(
                width: double.infinity,
                color: MyThemeData.lightColor,
                height: 2,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AhadithContent.namekey,
                            arguments: haditData[index],
                          );
                        },
                        child: Text(
                          haditData[index].title,
                          style: MyThemeData.lightTheme.textTheme.bodySmall,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Container(
                    width: double.infinity,
                    color: MyThemeData.lightColor,
                    height: 2,
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                  ),
                  itemCount: haditData.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void loadFileHadith() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> AhaditContent = value.split("#");
      for (int i = 0; i < AhaditContent.length; i++) {
        int lastindex = AhaditContent[i].trim().indexOf("\n");
        String title = AhaditContent[i].trim().substring(0, lastindex);
        print(title);
        String content = AhaditContent[i].trim().substring(lastindex + 1);
        AhadthModel headthModel = AhadthModel(title, content);
        haditData.add(headthModel);
        setState(() {});
      }
      // for(int i=0;i<AhaditContent.length;i++){
      //   List<String>lines=AhaditContent[i].trim().split("\n");
      //   String title=lines[0];
      //   lines.removeAt(0);
      //   List<String>Countent=lines;
      //   print(title);
      //   AhadthModel headthModel= AhadthModel(title,Countent);
      //   haditData.add(headthModel );
      //
      // }
    }).catchError((error) {
      print(error.toString());
    });
  }
}
