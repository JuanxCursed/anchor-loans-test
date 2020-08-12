import 'package:smart_coach/app/shared/models/question_model.dart';

abstract class IQuestionRepository {
  Stream<List<QuestionModel>> get();
  Future<QuestionModel> getById(String id);
}