// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardController on _DashboardControllerBase, Store {
  final _$chartMapAtom = Atom(name: '_DashboardControllerBase.chartMap');

  @override
  Map<String, double> get chartMap {
    _$chartMapAtom.reportRead();
    return super.chartMap;
  }

  @override
  set chartMap(Map<String, double> value) {
    _$chartMapAtom.reportWrite(value, super.chartMap, () {
      super.chartMap = value;
    });
  }

  final _$loadingAtom = Atom(name: '_DashboardControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$_DashboardControllerBaseActionController =
      ActionController(name: '_DashboardControllerBase');

  @override
  void setLoading(bool isLoading) {
    final _$actionInfo = _$_DashboardControllerBaseActionController.startAction(
        name: '_DashboardControllerBase.setLoading');
    try {
      return super.setLoading(isLoading);
    } finally {
      _$_DashboardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadSummary() {
    final _$actionInfo = _$_DashboardControllerBaseActionController.startAction(
        name: '_DashboardControllerBase.loadSummary');
    try {
      return super.loadSummary();
    } finally {
      _$_DashboardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
chartMap: ${chartMap},
loading: ${loading}
    ''';
  }
}
