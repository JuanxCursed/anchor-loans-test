import 'package:smart_coach/app/shared/models/topic_model.dart';

abstract class ITopicRepository {
  Stream<List<TopicModel>> get();
  Future<TopicModel> getById(String id);
  Stream<List<TopicModel>> getByKeyword(String keywordId);
}