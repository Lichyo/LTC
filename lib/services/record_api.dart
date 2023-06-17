import 'package:record/record.dart';
import 'package:firebase_storage/firebase_storage.dart';

class RecordApi {
  final Record record = Record();
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  void startRecord({path}) async {
    if (await record.hasPermission()) {
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
