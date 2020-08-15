import 'package:anchor_loans_test/app/shared/repositories/users/user_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepositoryFirebase implements UserRepositoryInterface {
  Firestore _db = Firestore.instance;

  @override
  Future<void> save(String firebaseUserId, Map<String, dynamic> data) async {
    if (data != null) {
      await _db.collection('users').document(firebaseUserId).setData(data);
    }
  }
}
