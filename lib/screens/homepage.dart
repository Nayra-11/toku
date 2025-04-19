import 'package:flutter/material.dart';
import 'package:toku/compenents/component_item.dart';
import 'package:toku/screens/colorpage.dart';
import 'package:toku/screens/familypage.dart';
import 'package:toku/screens/numberpage.dart';
import 'package:toku/screens/phrasespage.dart';

import '../compenents/app_bar.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF6DB),
      appBar: CustomAppBar(
        title: 'Toku',
      ),
      body: Column(
        children: [
          catageory(
            text: 'Numbers',
            color: Color(0xFFEF9235),
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return numberspage();
              }));
            },
          ),
          catageory(
            text: 'Family Member',
            color: Color.fromARGB(255, 73, 153, 3),
            ontap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return familypage();
                },
              ));
            },
          ),
          catageory(
            text: 'Colors',
            color: Color(0xFF7D40A2),
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return colorpage();
              }));
            },
          ),
          catageory(
            text: 'Phrases',
            color: Color(0xFF47A5CB),
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return phrasespage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
