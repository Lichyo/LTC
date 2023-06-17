import 'package:record/record.dart';
import 'package:firebase_storage/firebase_storage.dart';

class RecordApi {
  final Record _record = Record();
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  void startRecord({required path}) async {
    if (await _record.hasPermission()) {
      await _record.start(
        path: path,
        encoder: AudioEncoder.aacLc,
        bitRate: 128000,
      );
    }
  }

  Future<bool> isRecording() async => await _record.isRecording();

  void stopRecord() {
    _record.stop();
  }

  Future<void> storeAudioToFirebase({user, audio, audioName}) async {
    final path = 'audio/$user/audioName';
    final ref = _firebaseStorage.ref().child(path);
    try {
      ref.putFile(audio);
      print('upload file to firebase succeed');
    }
    catch(e) {
      print('upload fail : $e');
    }
  }
}
