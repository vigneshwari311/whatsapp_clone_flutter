import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData darkTheme = ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(18, 18, 18, 1),
        textTheme: const TextTheme(

         
            bodyLarge: TextStyle(
                fontSize: 28, color: nameOfPeople, fontWeight: FontWeight.w600),
            bodyMedium: TextStyle(fontSize: 28, color: nameOfPeople),

           

            labelLarge: TextStyle(
                color: nameOfPeople, fontWeight: FontWeight.w500, fontSize: 20),
            labelSmall: TextStyle(
              fontSize: 16,
              color: chipMetaAiTextColor,
            ),
            displayMedium: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500)),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          foregroundColor: Color.fromRGBO(227, 226, 226, 1),
          actionsIconTheme: IconThemeData(
            size: 28,
          ),
        ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: const NavigationBarWhatsApp(),
    );
  }
}
