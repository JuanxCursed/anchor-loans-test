import 'package:smart_coach/app/shared/models/theme_model.dart';

abstract class IThemeService {
  Stream<List<ThemeModel>> get();
  Future<ThemeModel> getById(String id);
}