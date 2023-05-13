import 'app_colors.dart';

class ColorManager {
  static MainTheme mainTheme = MainTheme();

  static final ColorManager _instance = ColorManager._internal();
  late AppColors theme;

  factory ColorManager() {
    _instance.theme = mainTheme;
    return _instance;
  }

  ColorManager._internal();
}
