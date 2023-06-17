import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  const SettingButton(
      {super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(
                    icon,
                    size: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      text,
                      style: const TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
