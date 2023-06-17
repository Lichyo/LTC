import 'package:flutter/material.dart';
import 'package:long_time_care/components/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LTC'),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Icon(
                Icons.phone,
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
                    child: Button(text: "呼叫", icon: "icon", onTap: () {}),
                  ),
                  Expanded(
                    child: Button(text: "不適", icon: "icon", onTap: () {}),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Button(text: "飲食", icon: "icon", onTap: () {}),
                  ),
                  Expanded(
                    child: Button(text: "移動", icon: "icon", onTap: () {}),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Button(text: "洗澡", icon: "icon", onTap: () {}),
                  ),
                  Expanded(
                    child: Button(text: "廁所", icon: "icon", onTap: () {}),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
