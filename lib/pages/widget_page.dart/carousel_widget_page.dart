import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class CarouselWidgetPage extends StatelessWidget {
  List<String> imageUrls = [
    "https://images.pexels.com/photos/1007657/pexels-photo-1007657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/2466778/pexels-photo-2466778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/28860862/pexels-photo-28860862/free-photo-of-vibrante-vida-nocturna-en-fremont-street-las-vegas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CAROUSEL"),
      ),
      body: Center(
        child: Column(
          children: [
            CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 5,
                  autoPlayCurve: Curves.linear,
                  enableInfiniteScroll: true,
                ),
                items: imageUrls.map((element) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      element,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                }).toList()),

            //CON GF CAROUSEL DE GETWIDET
            // GFCarousel(
            //     height: 200, //altura del carrusel
            //     autoPlay: true, //Reproducción automática
            //     enlargeMainPage: true, //Resaltar el elemento central
            //     hasPagination: true,
            //     initialPage: 1,
            //     autoPlayAnimationDuration: Duration(seconds: 4),
            //     activeIndicator: Colors.red,
            //     // reverse: true,
            //     enableInfiniteScroll: true, //habilitar el scroll infinito
            //     items: imageUrls.map((element) {
            //       return ClipRRect(
            //         borderRadius: BorderRadius.circular(10),
            //         child: Image.network(
            //           element,
            //           fit: BoxFit.cover,
            //           width: double.infinity,
            //         ),
            //       );
            //     }).toList()),
          ],
        ),
      ),
    );
  }
}
