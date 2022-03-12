import 'package:flutter/material.dart';
import 'package:ui_app/screens/app/categories_screen.dart';
import 'package:ui_app/screens/app/faqs_screen.dart';
import 'package:ui_app/screens/app/home_screen.dart';
import 'package:ui_app/screens/app/info_screen.dart';
import 'package:ui_app/screens/app/main_screen.dart';
import 'package:ui_app/screens/app/profile_screen.dart';
import 'package:ui_app/screens/app/settings_screen.dart';
import 'package:ui_app/screens/auth/login_screen.dart';
import 'package:ui_app/screens/auth/register_screen.dart';
import 'package:ui_app/screens/lunch_screen.dart';
import 'package:ui_app/screens/outboarding/out_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/lunch_screen',
      routes: {
        '/lunch_screen' : (context) => const LunchScreen(),
        '/out_boarding_screen' : (context) => OutBoardingScreen(),
        '/login_screen' : (context) => const LoginScreen(),
        '/register_screen' : (context) => RegisterScreen(),
        '/categories_screen' : (context) => const CategoriesScreen(),
        '/home_screen' : (context) => const HomeScreen(),
        '/main_screen' :(context) => const MainScreen(),
        '/profile_screen' : (context) => const ProfileScreen(),
        '/settings_screen' : (context) => const SettingsScreen(),
        '/faqs_screen' : (context) => const FAQsScreen(),
        '/info_screen' : (context) => const InfoScreen(),

      },
      // theme: ThemeData(
      //   primaryColor: Colors.red,
      //   fontFamily: 'Cairo',
      //     backgroundColor: Colors.black87,
      // ),
    );
  }
}
