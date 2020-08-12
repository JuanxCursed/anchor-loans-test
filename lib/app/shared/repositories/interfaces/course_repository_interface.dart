import '../../models/course_model.dart';

abstract class ICourseRepository {
  Stream<List<CourseModel>> get();
  Future<CourseModel> getById(String id);
}