import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  String asset;
  String title;
  String description;
  Color color;
  WelcomeWidget({
    required this.asset,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
        child: Container(
          width: MediaQuery.of(context).size.width - 40,
          height: MediaQuery.of(context).size.height - 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/$asset.png",
                height: MediaQuery.of(context).size.height / 5,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  description,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
