import 'package:flutter/material.dart';

class MyThemeData{
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffF8F8F8);
  static Color primaryDark = Color(0xff141A2E);
  static Color yellowDarkColor = Color(0xffFACC1D);



  static ThemeData lightMode = ThemeData(
   primaryColor: primaryLight,
   scaffoldBackgroundColor: Colors.transparent,
   appBarTheme: AppBarTheme(
     backgroundColor: Colors.transparent,
     elevation: 0,
     iconTheme: IconThemeData(
       color: blackColor
     )

   ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       selectedItemColor: blackColor,
       unselectedItemColor: whiteColor,
     ),
     textTheme: TextTheme(
       headline1: TextStyle(
         fontSize: 30,
         fontWeight: FontWeight.bold,
         color: blackColor,
       ),
       subtitle1: TextStyle(
         fontSize: 25,
         fontWeight: FontWeight.w600,
         color: blackColor
       ),
       subtitle2: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w400,
           color: blackColor
       ),
       headline3: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w300,
           color: whiteColor,
       ),
       headline5: TextStyle(
         fontSize: 22,
         fontWeight: FontWeight.bold,
           color: primaryLight
       )
     )
 );



 static ThemeData darkMode = ThemeData(
     primaryColor: primaryDark,
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: AppBarTheme(
         backgroundColor: Colors.transparent,
         elevation: 0,
         iconTheme: IconThemeData(
             color: whiteColor
         )

     ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       selectedItemColor: yellowDarkColor,
       unselectedItemColor: whiteColor,
     ),
     textTheme: TextTheme(
         headline1: TextStyle(
           fontSize: 30,
           fontWeight: FontWeight.bold,
           color: whiteColor,
         ),
         subtitle1: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.w600,
             color: blackColor
         ),
         subtitle2: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.w400,
             color: whiteColor
         ),
         headline3: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w300,
           color: whiteColor,
         ),
         headline5: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.bold,
             color: primaryLight
         )
     ));
}