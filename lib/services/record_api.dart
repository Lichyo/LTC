import 'package:record/record.dart';

class RecordApi {
  final Record record = Record();

  void startRecord({path}) async{
    if(await record.hasPermission()) {
      await record.start(
        path: path,
        encoder: AudioEncoder.aacLc,
        bitRate: 128000,
      );
    }
  }

  void stopRecord() {
    record.stop();
  }
}