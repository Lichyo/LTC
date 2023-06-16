import 'dart:async';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:record/record.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const LTC());
}

class LTC extends StatelessWidget {
  const LTC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
