import 'package:flutter/material.dart';
import 'package:long_time_care/components/button.dart';
import 'package:long_time_care/components/record_button.dart';
import 'package:long_time_care/components/setting_button.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('設定'),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: IconButton(
                icon: Icon(Icons.settings),
                iconSize: 30,
                onPressed: () {
                  print("aaa");
                }
                // Icons.settings,
                // ,
                ),
          )
        ],
      ),
      body: Column(
        children: [
          SettingButton(text: "綁定家庭", icon: Icons.house, onTap: () {}),
          SettingButton(text: "綁定主要照顧人", icon: Icons.diversity_1, onTap: () {}),
          SettingButton(text: "更改個人資料", icon: Icons.person, onTap: () {}),
        ],
      ),
    );
  }
}
