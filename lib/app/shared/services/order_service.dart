import 'package:meta/meta.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/order_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/order_repository_interface.dart';
import 'package:smart_coach/app/shared/services/interfaces/order_service_interface.dart';

class OrderService extends Disposable implements IOrderService {
  final IOrderRepository orderRepository;
  OrderService({@required this.orderRepository});

  @override
  Future<OrderModel> createOrder(OrderModel order) {
    return orderRepository.create(order);
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future<OrderModel> getOrderById(String id) {
    return orderRepository.getById(id);
  }

  @override
  Stream<List<OrderModel>> getOrders() {
    return orderRepository.get();
  }

}