abstract class UserRepositoryInterface {
  Future<void> save(String firebaseUserId, Map<String, dynamic> data);
}
