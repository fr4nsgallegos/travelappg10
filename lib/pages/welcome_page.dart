import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:travelappg10/widgets/welcome_widget.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GFCarousel(
          height: MediaQuery.of(context).size.height,
          hasPagination: true,
          activeIndicator: Colors.blue,
          enlargeMainPage: true,
          items: [
            WelcomeWidget(
              title: "Viaja",
              description:
                  "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de t",
              asset: "avion",
              color: Colors.orange,
            ),
            WelcomeWidget(
              title: "Imprime tus tickets",
              description:
                  "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500",
              color: Colors.red,
              asset: "print",
            ),
            WelcomeWidget(
              title: "Agenda tus viajes",
              description:
                  "l texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno están",
              color: Colors.cyan,
              asset: "agregar",
            ),
          ],
        ),
      ),
    );
  }
}
