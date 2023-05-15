import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_igor/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Igor Santos',
      //theme: ThemeData.light(),
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          // Defina outras fontes para diferentes estilos de texto
        ),
      ),

      home: MyProfilePage(),
    );
  }
}

