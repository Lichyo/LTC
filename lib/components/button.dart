import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  const Button(
      {super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.orangeAccent[200],
            child: Center(
              child: Column(children: [
                Icon(
                  icon,
                  size: 50,
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
