import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/models/moduels/my_theam.dart';

class radio extends StatelessWidget {
  const radio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.12,
          ),
          Image.asset(
            "assets/images/radio_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Text(
            "radio",
            style: MyThemeData.lightTheme.textTheme.bodySmall?.copyWith(
              fontSize: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 38,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 40,
                      color: MyThemeData.lightColor,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.stop,
                    size: 40,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 38,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 40,
                      color: MyThemeData.lightColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}