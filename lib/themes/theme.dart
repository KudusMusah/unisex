import 'package:flutter/material.dart';

class AppTheme{
  
  static ThemeData lightTheme = ThemeData(
    primarySwatch: buildMaterialColor(const Color(0xff07c0cc)),
    textTheme: const TextTheme(
      labelSmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 13.0,
        color: Color(0xff374b48),
        letterSpacing: 0.0
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 17.0, 
        color: Colors.white
      ),
      labelLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        color: Color(0xff959191)
      ),
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        color: Colors.black
      ),
      titleMedium: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 10.0,
        color: Colors.black
      ),
      titleSmall: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.normal,
        fontSize: 8.0,
        color: Colors.black
      ),

      displaySmall: TextStyle(
        fontFamily: 'Inter',
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 12.0,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 14.0,
        ),
      displayLarge: TextStyle(
        fontFamily: 'Inter',
        color: Colors.black,
        fontSize: 20.0,
        ),
      
      
    ),
    dividerTheme: const DividerThemeData(
      color: Color(0xff0ef1ff),
      thickness: 2.0
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: const Color(0xff07c0cc),
      textStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 15.0, 
        color: Colors.white
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
    ),
    buttonTheme: ButtonThemeData(
      minWidth: double.infinity,
      height: 42.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      )
      
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          width: 0, 
          style: BorderStyle.none
        )
      ),
      fillColor: const Color(0xff9d9a9a).withOpacity(0.25),
      filled: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      constraints: BoxConstraints.loose(
        const Size(320, 42)
        // minWidth: 300.0,
        // minHeight: 40.0,
        // maxWidth: 320,
        // maxHeight: 45.0
      ),

    )
  );
  
  static MaterialColor  buildMaterialColor(Color color){
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++){
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

}
