import 'package:flutter/material.dart';
import 'package:long_time_care/services/record_api.dart';
import 'dart:async';

class LabPage extends StatelessWidget {
  LabPage({super.key});
  final RecordApi _recordApi = RecordApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () {
              _recordApi.startRecord(path: '/Users/lichyo/long_time_care/lib/assets/audios/audio1');
              Timer(const Duration(seconds: 5), () {
                _recordApi.stopRecord();
              });
            },
            child: const Text('upload file'),
          ),
        ],
      ),
    );
  }
}
