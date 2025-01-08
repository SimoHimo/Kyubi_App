import 'package:flutter/material.dart';
import 'package:kyubi/core/theme/app_pallete.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(15));
  static final darkThemeMode = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(color: AppPallete.backgroundColor,),
    // ignore: deprecated_member_use
    backgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
        enabledBorder: _border(),
        focusedBorder: _border(AppPallete.gradient2.withOpacity(0.6))),
  );
}
