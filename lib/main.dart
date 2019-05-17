import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:belgrano/scoped_models/main_model.dart';

import './pages/home.dart';
import './pages/contacto.dart';

import './pages/edificio.dart';
import './pages/pisos.dart';
import './pages/exoneraciones.dart';
import './pages/planos.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final MainModel model = MainModel();
    return ScopedModel<MainModel>(
      model: model,
      child: MaterialApp(
        title: 'Edificio Belgrano',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.black,
        ),
        home: HomePage(),
        routes: {
          '/home': (BuildContext context) => HomePage(),
          '/contacto': (BuildContext context) => ContactoPage(),
          '/edificio': (BuildContext context) => EdificioPage(),
          '/pisos': (BuildContext context) => PisosPage(),

          
          '/exoneraciones': (BuildContext context) => ExoneracionesPage(),
          '/planos': (BuildContext context) => PlanosPage(),
        },
      ),
    );
  }
}
