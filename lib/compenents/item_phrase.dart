import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/model.dart';

class item extends StatefulWidget {
  const item({super.key, required this.model});
  final Model model;

  @override
  State<item> createState() => _itemState();
}

class _itemState extends State<item> {
  bool isPlaying = false;

  void _playAudio() {
    if (isPlaying) return;

    setState(() {
      isPlaying = true;
    });

    widget.model.playAudio().then((_) {
      if (mounted) {
        setState(() {
          isPlaying = false;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenWidth * 0.25,
      color: const Color(0xFF47A5CB),
      child: Row(
        children: [
          SizedBox(width: screenWidth * 0.05),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.model.jpName,
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.model.enName,
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.04),
            child:IconButton(
              onPressed: _playAudio,
              icon: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                transitionBuilder: (child, animation) =>
                    ScaleTransition(scale: animation, child: child),
                child: Icon(
                  isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
                  key: ValueKey<bool>(isPlaying),
                  color: isPlaying ? Colors.green : Colors.white,
                  size: screenWidth * 0.08,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
