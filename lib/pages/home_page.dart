import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelappg10/widgets/card2_widget.dart';
import 'package:travelappg10/widgets/destination_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.rocket,
              color: Colors.cyan,
            ),
            SizedBox(width: 8),
            Text(
              "DiscountTour",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find the best tour",
              style: TextStyle(
                fontFamily: 'Jaro',
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.",
              style: GoogleFonts.montserrat(
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Country",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DestinationCard(),
                  DestinationCard(),
                  DestinationCard(),
                  DestinationCard(),
                  DestinationCard(),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Card2Widget(),
            Card2Widget(),
            Card2Widget(),
            Card2Widget(),
          ],
        ),
      ),
    );
  }
}
