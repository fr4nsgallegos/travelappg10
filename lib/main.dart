import 'package:flutter/material.dart';
import 'package:travelappg10/pages/home_page.dart';
import 'package:travelappg10/pages/widget_page.dart/carousel_widget_page.dart';
import 'package:travelappg10/pages/widget_page.dart/shared_preferences_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: CarouselWidgetPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
