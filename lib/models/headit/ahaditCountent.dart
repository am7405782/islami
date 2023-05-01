import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../moduels/my_theam.dart';
import 'headithModel.dart';

class AhadithContent extends StatelessWidget {
  static const String namekey = "AhadithContent";

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as AhadthModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/background.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            arg.title,
            style: MyThemeData.lightTheme.textTheme.bodySmall,
          ),
          iconTheme: MyThemeData.lightTheme.iconTheme,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              elevation: 12,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  arg.Countent,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                    //  height: MediaQuery.of(context).size.height*1,
                    color: Colors.black,
                    //wordSpacing: 2,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
