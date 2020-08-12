import '../../models/order_model.dart';

abstract class IOrderRepository {
  Stream<List<OrderModel>> get();
  Future<OrderModel> getById(String id);
  Future<OrderModel> create(OrderModel order);
}