import '../../models/theme_model.dart';

abstract class IThemeRepository {
  Stream<List<ThemeModel>> get();
  Future<ThemeModel> getById(String id);
}