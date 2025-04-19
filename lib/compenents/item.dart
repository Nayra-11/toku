import 'package:flutter/material.dart';
import 'package:toku/models/model.dart';



class item extends StatefulWidget {
  const item({super.key, required this.color, required this.model});
  final Model model;
  final Color color;

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
      color: widget.color,
      child: Row(
        children: [
          Container(
            width: screenWidth * 0.25,
            color: const Color(0xFFFFF6DC),
            child: Image.asset(
              widget.model.image!,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SizedBox(width: screenWidth * 0.05), // بدل left: 25
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.model.jpName,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.model.enName,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.04), // بدل right: 16
            child: IconButton(
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
