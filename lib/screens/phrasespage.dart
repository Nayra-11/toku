import 'package:flutter/material.dart';
import 'package:toku/compenents/item_phrase.dart';
import 'package:toku/models/model.dart';

import '../compenents/app_bar.dart';


class phrasespage extends StatelessWidget {
   phrasespage({super.key});
  final List<Model> phrase =  [
    Model(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Kiteru',
        enName: 'are you coming'),
    Model(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku o wasurenaide kudasai.',
        enName: 'dont forget to subscribe'),
    Model(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Chōshi wa dō desu ka?',
        enName: 'how are you feeling'),
    Model(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Anime ga daisuki desu',
        enName: 'i love anime'),
    Model(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Puroguramingu ga daisuki desu',
        enName: 'i love programming'),
    Model(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantan desu',
        enName: 'programming is easy'),
    Model(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Anata no onamae wa nan desu ka',
        enName: 'what is your name'),
    Model(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no desu ka',
        enName: 'where are you going'),
    Model(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai, kiteimasu',
        enName: 'yes im coming'),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar (
          title: 'Phrases',
        ),
        body: ListView.builder(
          itemCount: phrase.length,
          itemBuilder: (context, index) {
            return (item(model: phrase[index]));
          },
        ));
  }
}
