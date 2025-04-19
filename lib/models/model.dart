import 'package:audioplayers/audioplayers.dart';

class Model {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
  final AudioPlayer _player = AudioPlayer();
   Model(
      {
       this.image,
      required this.jpName,
      required this.enName,
      required this.sound});
  Future<void> playAudio() async {
    await _player.play(AssetSource(sound));
    await _player.onPlayerComplete.first;
  }
}
