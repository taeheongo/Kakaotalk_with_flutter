import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData buildKakaoLightTheme() {
  final base = ThemeData.light();

  return base.copyWith(
    primaryColor: PRIMARY_COLOR,
    accentColor: SECONDARY_COLOR,
    scaffoldBackgroundColor: BACKGROUND_COLOR,
    appBarTheme: _buildAppBarTheme(base),
    textTheme: _buildTextTheme(base),
    bottomNavigationBarTheme: _buildBottomNavigationBarTheme(base),
    dividerTheme: base.dividerTheme.copyWith(color: DIVIDER_COLOR),
  );
}

BottomNavigationBarThemeData _buildBottomNavigationBarTheme(ThemeData base) {
  return base.bottomNavigationBarTheme.copyWith(
      backgroundColor: SECONDARY_COLOR,
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.grey,
      unselectedIconTheme: IconThemeData());
}

TextTheme _buildTextTheme(ThemeData base) {
  return base.textTheme.apply(
    fontFamily: "NotoSansKR",
    displayColor: TEXT_COLOR,
    bodyColor: TEXT_COLOR,
  );
}

AppBarTheme _buildAppBarTheme(ThemeData base) {
  return base.appBarTheme.copyWith(
    iconTheme: base.iconTheme.copyWith(color: Colors.black),
    textTheme: base.textTheme.apply(
      fontFamily: "NotoSansKR",
      displayColor: TEXT_COLOR,
      bodyColor: TEXT_COLOR,
    ),
  );
}
