import 'package:firebase_storage/firebase_storage.dart';

class RecordDatabase {
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  Future<void> storeAudioToFirebase({user, audio}) async{
    _firebaseStorage.ref('/').child(user).putFile(audio);
  }
}