import 'package:mobx/mobx.dart';

part 'location_controller.g.dart';

class LocationController = _LocationControllerBase with _$LocationController;

abstract class _LocationControllerBase with Store {}
