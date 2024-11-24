import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeWidget extends StatelessWidget {
  String asset;
  String title;
  String description;
  Color color;
  bool showButton;
  WelcomeWidget({
    required this.asset,
    required this.title,
    required this.description,
    required this.color,
    this.showButton = false,
  });

  Future<void> setYaInicio() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setBool('yaInicio', true);
  }

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
              ),
              showButton
                  ? Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: ElevatedButton(
                          onPressed: () {
                            setYaInicio();
                          },
                          child: Text("Vamos")),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
