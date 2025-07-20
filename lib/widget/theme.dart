import 'package:flutter/material.dart';

final ThemeData mytheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,

  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    surface: Color(0xFFE8F5E9), 
    onSurface: Color(0xFF1B5E20),  
    surfaceTint: Color(0xFFC8E6C9),
    primary: Color(0xFF4CAF50), 
   onPrimary: Colors.white,
    secondary: Color(0xFFA5D6A7), 
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    surfaceTintColor: Color(0xFF4CAF50), 
  ),

  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: Colors.transparent,
    elevation: 0,
    indicatorColor: Color(0xFFA5D6A7), 
    iconTheme: WidgetStatePropertyAll(
      IconThemeData(
        color: Color(0xFF2E7D32), 
        size: 30,
      ),
    ),
  ),
);
