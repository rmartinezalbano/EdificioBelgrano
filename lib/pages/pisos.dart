import 'package:belgrano/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../widgets/drawer.dart';


import 'package:belgrano/scoped_models/main_model.dart';
import '../pisos/piso1.dart';
import '../pisos/piso2.dart';
import '../pisos/piso3.dart';
import '../pisos/piso4.dart';
import '../pisos/piso5.dart';
import '../widgets/float_button.dart';

class PisosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PisosPageState();
  }
}

class PisosPageState extends State<PisosPage> {
  int opcion = 2;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
      builder: (BuildContext context, Widget child, MainModel model) {
        return DefaultTabController(
          length: 5,
          child: Scaffold(
          floatingActionButton: FloatingButton(),
            drawer: DrawerPage(),
            appBar: AppBar(
              title: Text('Pisos'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: '1er',
                  ),
                  Tab(
                    text: '2do',
                  ),
                  Tab(
                    text: '3er',
                  ),
                  Tab(
                    text: '4to',
                  ),
                  Tab(
                    text: '5to',
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
                fixedColor: Colors.blue,
                currentIndex: opcion,
                onTap: (int index) {
                  if (index == 0) {
                    setState(() {
                      Navigator.pushReplacementNamed(context, '/home');
                    });
                  } else if (index == 1) {
                    setState(() {
                      Navigator.pushReplacementNamed(context, '/edificio');
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
                      title: Text('Pisos',
                          style: TextStyle(color: Colors.black))),
                ]),
            body: TabBarView(
              children: <Widget>[
                Piso1Page(),
                Piso2Page(),
                Piso3Page(),
                Piso4Page(),
                Piso5Page()
              ],
            ),
          ),
        );
      },
    );
  }
}
