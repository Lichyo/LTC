import 'package:cloud_firestore/cloud_firestore.dart';

class TaskDatabase {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createTask({user, task}) async{
    _firestore.collection('$user').add(task);
  }




}