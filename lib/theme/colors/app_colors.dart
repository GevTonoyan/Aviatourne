import 'package:flutter/material.dart';

abstract class AppColors {
  abstract final Color positiveBackgroundLight;
  abstract final Color appWhite;
  abstract final Color appBlack;
  abstract final Color appGrey;
  abstract final Color cardBackground;
  abstract final Color cardBackgroundFocused;
  abstract final Color positiveBackgroundDark;
  abstract final Color description;
  abstract final Color divider;
  abstract final Color informationText;
}

class MainTheme extends AppColors {
  @override
  final Color positiveBackgroundLight = const Color(0xFF00AEEF);
  @override
  final Color appWhite = const Color(0xffFFFFFF);
  @override
  final Color appBlack = const Color(0xff333333);
  @override
  final Color appGrey = const Color(0xff737677);
  @override
  final Color cardBackground = const Color(0xff4D4D4D);

  @override
  Color get cardBackgroundFocused => const Color(0xffFBFBFB);

  @override
  Color get positiveBackgroundDark => const Color(0xff0195CE);

  @override
  Color get description => const Color(0xff999999);

  @override
  Color get divider => const Color(0xffF2F2F2);

  @override
  Color get informationText => const Color(0xff666666);
}
