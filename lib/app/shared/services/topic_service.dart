import 'package:meta/meta.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/topic_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/topic_repository_interface.dart';
import 'package:smart_coach/app/shared/services/interfaces/topic_service_interface.dart';

class TopicService extends Disposable implements ITopicService {
  final ITopicRepository topicRepository;
  TopicService({@required this.topicRepository});

  @override
  void dispose() { }

  @override
  Stream<List<TopicModel>> get() {
    return topicRepository.get();
  }

  @override
  Future<TopicModel> getById(String id) {
    return topicRepository.getById(id);
  }

  @override
  Stream<List<TopicModel>> getByKeyword(String keywordId) {
    return topicRepository.getByKeyword(keywordId);
  }
}