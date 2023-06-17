import 'dart:async';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:record/record.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
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
