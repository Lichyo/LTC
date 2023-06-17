import 'dart:async';
import 'package:flutter/material.dart';
import 'package:long_time_care/components/button.dart';
import 'package:long_time_care/components/record_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('LTC'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Icon(
              Icons.settings,
              size: 28.0,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Button(text: "呼叫", icon: Icons.group, onTap: () {}),
                ),
                Expanded(
                  child: Button(text: "不適", icon: Icons.sick, onTap: () {}),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Button(text: "飲食", icon: Icons.dining, onTap: () {}),
                ),
                Expanded(
                  child: Button(
                      text: "移動",
                      icon: Icons.transfer_within_a_station,
                      onTap: () {}),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Button(text: "洗澡", icon: Icons.shower, onTap: () {}),
                ),
                Expanded(
                  child: Button(text: "廁所", icon: Icons.wc, onTap: () {}),
                ),
              ],
            ),
          ),
          Expanded(
            child: RecordButton(
              onTap: () {
                print("a");
              },
            ),
          ),
        ],
      ),
    );
  }
}
