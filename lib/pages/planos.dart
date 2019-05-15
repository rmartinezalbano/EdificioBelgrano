import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:belgrano/scoped_models/main_model.dart';
import '../planos/plano1.dart';
import '../planos/plano2.dart';
import '../planos/plano3.dart';
import '../planos/plano4.dart';


class PlanosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PlanosPageState();
  }
}

class PlanosPageState extends State<PlanosPage> {
  int opcion = 1;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
      builder: (BuildContext context, Widget child, MainModel model) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            drawer: Drawer(
              child: Column(
                children: [
                  AppBar(
                    automaticallyImplyLeading: false,
                    title: Text('Edificio Belgrano'),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Inicio'),
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/home'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text('Contacto'),
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/contacto'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.location_city),
                    title: Text('Edificio'),
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/edificio'),
                  ),
                  Divider(),
                  ListTile(
              leading: Icon(Icons.grid_on),
              title: Text('Planos'),
              onTap: () => Navigator.pushReplacementNamed(context, '/planos'),
            ),
            Divider(),
                  ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text('Exoneraciones'),
                    onTap: () => Navigator.pushReplacementNamed(
                        context, '/exoneraciones'),
                  ),
                  Divider(),
                ],
              ),
            ),
            appBar: AppBar(
              title: Text('Planos'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: 'PB',
                  ),
                  Tab(
                    text: '1er y 2do',
                  ),
                  Tab(
                    text: '3er y 4to',
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
                  } else if (index == 2) {
                    setState(() {
                      Navigator.pushReplacementNamed(context, '/exoneraciones');
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
                      icon: Icon(Icons.account_balance),
                      title: Text('Exoneraciones',
                          style: TextStyle(color: Colors.black))),
                ]),
            body: TabBarView(
              children: <Widget>[
                Plano1Page(),
                Plano2Page(),
                Plano3Page(),
                Plano4Page(),
                
              ],
            ),
          ),
        );
      },
    );
  }
}
