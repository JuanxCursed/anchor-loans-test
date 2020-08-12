import 'package:smart_coach/app/shared/models/course_model.dart';

abstract class ICourseService {
  Stream<List<CourseModel>> get();
  Future<CourseModel> getById(String id);
}