import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';
import '../widgets/drawer.dart';

import 'package:belgrano/scoped_models/main_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int opcion = 0;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
      builder: (BuildContext context, Widget child, MainModel model) {
        return Scaffold(
          drawer: DrawerPage(),
          appBar: AppBar(
            title: Text(
              'Inicio',
              style: TextStyle(fontSize: 24),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              fixedColor: Colors.blue,
              currentIndex: opcion,
              onTap: (int index) {
                if (index == 1) {
                  setState(() {
                    Navigator.pushReplacementNamed(context, '/edificio');
                  });
                } else if (index == 2) {
                  setState(() {
                    Navigator.pushReplacementNamed(context, '/pisos');
                  });
                } else
                  return setState(() {
                    opcion = index;
                  });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Inicio',
                        style: TextStyle(
                          color: Colors.black,
                        ))),
                BottomNavigationBarItem(
                    icon: Icon(Icons.location_city),
                    title: Text('Edificio',
                        style: TextStyle(color: Colors.black))),
                BottomNavigationBarItem(
                    icon: Icon(Icons.view_quilt),
                    title:
                        Text('Pisos', style: TextStyle(color: Colors.black))),
              ]),
          body: Container(
            alignment: Alignment.topCenter,
            child: ListView(
              children: [
                SizedBox(height: 15),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'En el espacio mas verde,',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Parque Belgrano',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      background: Paint()..color = Colors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Image.asset('assets/render.jpeg'),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'El m² más bajo + garage de regalo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Oportunidad Lanzamiento:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Combo 1',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Apto 401 de 2 dormitorios + Apto 403 de 1 Dormitorio + Garage Nro. 4.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'USD 240.000.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      background: Paint()..color = Colors.orange,
                    ),
                  ),
                ),
SizedBox(
                  height: 10,
                ),
Divider(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Combo 2',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Apto 403 de 1 Dormitorio + Apto 103 Monoambiente + Garage No. 4.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'USD 192.000.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      background: Paint()..color = Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
