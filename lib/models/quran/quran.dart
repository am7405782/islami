import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/models/moduels/my_theam.dart';
import 'package:islami/models/quran/sorsaCountant.dart';

import 'Suramodel.dart';

class quran extends StatelessWidget {
  List<String> name =[ "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
                "assets/images/quran_header.png",
            ),
          ),
          Container(
            width: double.infinity,
            color: MyThemeData.lightColor,
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "SoraName",
                style: MyThemeData.lightTheme.textTheme.bodySmall?.copyWith(
                  fontSize: 30,
                ),

              ),
            ],
          ),
          Container(
            width: double.infinity,
            color: MyThemeData.lightColor,
            height: 2,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context,SoraCountant.namekey ,
                        arguments:SuraModel(name[index],index),

                      );
                    },
                        child: Center(
                          child: Text(
                            name[index],
                            style: MyThemeData.lightTheme.textTheme.bodySmall?.copyWith(
                              fontSize: 15,
                            ),
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
                itemCount: name.length,
            ),
          ),

        ],
      ),
    );
  }
}