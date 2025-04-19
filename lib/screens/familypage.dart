import 'package:flutter/material.dart';
import 'package:toku/models/model.dart';

import '../compenents/app_bar.dart';
import '../compenents/item.dart';

class familypage extends StatelessWidget {
   familypage({super.key});
  final List<Model> family =  [
    Model(
        sound: 'sounds/members_family/grand father.wav',
        image: 'assets/images/family_member/family_grandfather.png',
        jpName: 'ojīsan',
        enName: 'Grand Father'),
    Model(
        sound: 'sounds/members_family/grand mother.wav',
        image: 'assets/images/family_member/family_grandmother.png',
        jpName: 'sobo',
        enName: 'Grand mother'),
    Model(
        sound: 'sounds/members_family/father.wav',
        image: 'assets/images/family_member/family_father.png',
        jpName: 'Chicioya',
        enName: 'Father'),
    Model(
        sound: 'sounds/members_family/mother.wav',
        image: 'assets/images/family_member/family_mother.png',
        jpName: 'Musume',
        enName: 'Mother'),
    Model(
        sound: 'sounds/members_family/older bother.wav',
        image: 'assets/images/family_member/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother'),
    Model(
        sound: 'sounds/members_family/older sister.wav',
        image: 'assets/images/family_member/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    Model(
        sound: 'sounds/members_family/younger brohter.wav',
        image: 'assets/images/family_member/family_younger_brother.png',
        jpName: 'otōto',
        enName: 'younger brother'),
    Model(
        sound: 'sounds/members_family/younger sister.wav',
        image: 'assets/images/family_member/family_younger_sister.png',
        jpName: 'imōto',
        enName: 'younger sister'),
    Model(
        sound: 'sounds/members_family/son.wav',
        image: 'assets/images/family_member/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    Model(
        sound: 'sounds/members_family/daughter.wav',
        image: 'assets/images/family_member/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar (
          title: 'Family Members',
        ),
        body: ListView.builder(
          itemCount: family.length,
          itemBuilder: (context, index) {
            return item(
              color: Color(0xFF558534),
              model: family[index],
            );
          },
        ));
  }
}
