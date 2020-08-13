import 'package:anchor_loans_test/app/shared/models/todo_model.dart';

abstract class TodoRepositoryInterface {
  Stream<List<TodoModel>> getTodos();
}
