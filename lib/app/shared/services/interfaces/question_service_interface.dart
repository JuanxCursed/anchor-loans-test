import 'package:smart_coach/app/shared/models/question_model.dart';

abstract class IQuestionService {
  Stream<List<QuestionModel>> getQuestions();  
}