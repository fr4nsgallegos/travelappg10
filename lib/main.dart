import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelappg10/pages/home_page.dart';
import 'package:travelappg10/pages/init_page.dart';
import 'package:travelappg10/pages/welcome_page.dart';
import 'package:travelappg10/widget_page.dart/carousel_widget_page.dart';
import 'package:travelappg10/widget_page.dart/shared_preferences_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: InitPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //Fuente desde local
          // fontFamily: 'Parkisans',

          // Fuente desde la libreria GoogleFonts
          textTheme: GoogleFonts.robotoTextTheme()),
    ),
  );
}
