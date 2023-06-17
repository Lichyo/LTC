import 'package:flutter/material.dart';

class RecordButton extends StatelessWidget {
  final Function onTapDown;
  final Function onTapUp;
  const RecordButton({super.key, required this.onTapUp, required this.onTapDown});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTapDown: onTapDown(),
        onTapUp: onTapUp(),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 4.0)),
          child: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepOrange,
            ),
            child: const Center(
              child: Icon(
                Icons.mic,
                size: 40.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
