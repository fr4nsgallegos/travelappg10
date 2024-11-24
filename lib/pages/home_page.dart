import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  Future<void> _saveContador() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    //GUARDAR EL CONTADOR
    _prefs.setInt('counter', contador);
    //GUARDAR MÁS INFORMACIÓN
    _prefs.setString('username', 'Jhonny"');
    _prefs.setDouble('heigth', 1.75);
    _prefs.setBool('isLoggetIn', true);
    _prefs.setStringList('favorites', ['Flutter', 'DART', 'Developer']);
  }

  Future<void> _getContador() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    //LEER EL CONTADOR
    contador = _prefs.getInt('counter') ?? 0;
    setState(() {});
  }

  @override
  void initState() {
    _getContador();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        contador++;
        _saveContador();

        setState(() {});
      }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              contador.toString(),
              style: TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
    );
  }
}
