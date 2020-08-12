import 'package:meta/meta.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/theme_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/theme_repository_interface.dart';
import 'package:smart_coach/app/shared/services/interfaces/theme_service_interface.dart';

class ThemeService extends Disposable implements IThemeService {
  final IThemeRepository themeRepository;
  ThemeService({@required this.themeRepository});

  @override
  void dispose() { }

  @override
  Stream<List<ThemeModel>> get() {
    return themeRepository.get();
  }

  @override
  Future<ThemeModel> getById(String id) {
    return themeRepository.getById(id);
  }
}