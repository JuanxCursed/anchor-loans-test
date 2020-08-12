import 'package:smart_coach/app/shared/models/order_model.dart';

abstract class IOrderService {
  Stream<List<OrderModel>> getOrders();
  Future<OrderModel> getOrderById(String id);
  Future<OrderModel> createOrder(OrderModel order);
}