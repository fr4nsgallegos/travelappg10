import 'package:flutter/material.dart';

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
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            Text(
              "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.",
              style: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Country",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              width: 170,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.srcATop),
                  image: NetworkImage(
                      "https://images.pexels.com/photos/257433/pexels-photo-257433.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.35),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "NEW",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 40,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: NetworkImage(
                                  "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                            ),
                          ),
                          // Positioned(
                          //   left: 20,
                          //   child: CircleAvatar(
                          //     radius: 16,
                          //     backgroundImage: NetworkImage(
                          //         "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          //   ),
                          // ),
                          // Positioned(
                          //   left: 16,
                          //   child: CircleAvatar(
                          //     radius: 16,
                          //     backgroundImage: NetworkImage(
                          //         "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
