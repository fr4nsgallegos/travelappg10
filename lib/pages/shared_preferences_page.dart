import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  @override
  State<SharedPreferencesPage> createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  int contador = 0;
  String user = "";

  Future<void> _saveContador() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    //GUARDAR EL CONTADOR
    _prefs.setInt('counter', contador);
    //GUARDAR MÁS INFORMACIÓN
    _prefs.setString('username', 'Jhonny');
    _prefs.setDouble('heigth', 1.75);
    _prefs.setBool('isLoggetIn', true);
    _prefs.setStringList('favorites', ['Flutter', 'DART', 'Developer']);
  }

  Future<void> _getContador() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    //LEER EL CONTADOR
    contador = _prefs.getInt('counter') ?? 0;
    user = _prefs.getString('username') ?? "-";
    setState(() {});
  }

  Future<void> clearContador() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    //Eliminar un dato en específico
    _prefs.remove('counter');

    //eliminar todos los datos
    // _prefs.clear();
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
              user,
              style: TextStyle(fontSize: 50),
            ),
            Text(
              contador.toString(),
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  clearContador();
                },
                child: Text("Eliminar shared preferences counter"))
          ],
        ),
      ),
    );
  }
}
