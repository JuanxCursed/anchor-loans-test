import 'package:meta/meta.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/question_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/question_repository_interface.dart';

import 'interfaces/question_service_interface.dart';

class QuestionService extends Disposable implements IQuestionService {
  final IQuestionRepository questionRepository;
  
  QuestionService({
    @required this.questionRepository,
  });

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Stream<List<QuestionModel>> getQuestions() {
    return questionRepository.get();
  }
}