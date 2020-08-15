// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  final _$loadingAtom = Atom(name: '_RegisterControllerBase.loading');

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

  final _$fieldsAtom = Atom(name: '_RegisterControllerBase.fields');

  @override
  Map<String, dynamic> get fields {
    _$fieldsAtom.reportRead();
    return super.fields;
  }

  @override
  set fields(Map<String, dynamic> value) {
    _$fieldsAtom.reportWrite(value, super.fields, () {
      super.fields = value;
    });
  }

  final _$registerAsyncAction = AsyncAction('_RegisterControllerBase.register');

  @override
  Future<void> register() {
    return _$registerAsyncAction.run(() => super.register());
  }

  final _$_RegisterControllerBaseActionController =
      ActionController(name: '_RegisterControllerBase');

  @override
  void setField({@required String key, @required dynamic value}) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setField');
    try {
      return super.setField(key: key, value: value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
fields: ${fields}
    ''';
  }
}
