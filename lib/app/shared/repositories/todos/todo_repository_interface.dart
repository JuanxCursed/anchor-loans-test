import 'package:marriedgames_app/app/shared/models/todo_model.dart';

abstract class TodoRepositoryInterface {
  Stream<List<TodoModel>> getTodos();
}
