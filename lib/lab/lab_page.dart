import 'package:flutter/material.dart';
import 'package:long_time_care/services/record_api.dart';
import 'dart:async';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

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
              _recordApi.startRecord(
                  path:
                      '/Users/lichyo/long_time_care/lib/assets/audios/audio1.m4a');
              Timer(const Duration(seconds: 5), () {
                _recordApi.stopRecord();
              });
            },
            child: const Text('recording'),
          ),
          TextButton(
            onPressed: () async {
              final audio =
                  File('/Users/lichyo/long_time_care/lib/assets/audios/audio1.m4a');
              _recordApi.storeAudioToFirebase(user: 'lichyo', audio: audio);
            },
            child: const Text('uploading file to firebase'),
          ),
        ],
      ),
    );
  }
}
