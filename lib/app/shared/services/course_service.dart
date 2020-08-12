import 'package:meta/meta.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/course_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/course_repository_interface.dart';
import 'package:smart_coach/app/shared/services/interfaces/course_service_interface.dart';

class CourseService extends Disposable implements ICourseService {
  final ICourseRepository courseRepository;
  CourseService({@required this.courseRepository});

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Stream<List<CourseModel>> get() {
    return this.courseRepository.get();
  }

  @override
  Future<CourseModel> getById(String id) {
    return this.courseRepository.getById(id);
  }

}