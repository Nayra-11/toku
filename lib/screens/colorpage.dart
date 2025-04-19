import 'package:flutter/material.dart';
import 'package:toku/compenents/item.dart';
import 'package:toku/models/model.dart';

import '../compenents/app_bar.dart';

class colorpage extends StatelessWidget {
    colorpage({super.key});
   List<Model> colors =  [
    Model(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'kuro',
        enName: 'Black'),
    Model(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'Brown'),
    Model(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'kusunda kiiro',
        enName: 'Dusty yellow'),
    Model(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'haiiro',
        enName: 'Gray'),
    Model(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'midori',
        enName: 'Green'),
    Model(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'aka',
        enName: 'Red'),
    Model(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'shiro',
        enName: 'White'),
    Model(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'Yellow'),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Colors',
        ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return item(
              color: Color(0xFF7D40A2),
              model: colors[index],
            );
          },

    ));
  }
}
