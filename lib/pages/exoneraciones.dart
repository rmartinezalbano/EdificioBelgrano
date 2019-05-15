import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:belgrano/scoped_models/main_model.dart';

class ExoneracionesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExoneracionesPageState();
  }
}

class ExoneracionesPageState extends State<ExoneracionesPage> {
  int opcion = 2;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
      builder: (BuildContext context, Widget child, MainModel model) {
        return Scaffold(
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
                  onTap: () => Navigator.pushReplacementNamed(context, '/home'),
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
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, '/exoneraciones'),
                ),
                Divider(),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text(
              'Exoneraciones',
              style: TextStyle(fontSize: 24),
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
                    icon: Icon(Icons.account_balance),
                    title: Text('Exoneraciones',
                        style: TextStyle(color: Colors.black))),
              ]),
          body: ListView(
            children: [
              
              Row(
                 children: [
                  Container(
                    
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.blue,
                      child: Image.asset('assets/iva.png'),
                    ),
                  ),
                  Container(
                    width: 210,
                    child: Column(
                      children: [
                        Text(
                          'IVA',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'Exento de IVA del precio de compra.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                                 ],
              ),
              Divider(color: Colors.black,), /////asdasdasdasdasdasdasdasdasd   2

              Row(
                 children: [
                  Container(
                    
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.blue,
                      child: Image.asset('assets/patrimonio.png'),
                    ),
                  ),
                  Container(
                    width: 210,
                    child: Column(
                      children: [
                        Text(
                          'PATRIMONIO',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'Exento de Impuesto al Patrimonio por el plazo de 10 años.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                                 ],
              ),
               Divider(color: Colors.black,),
              //// asdasdadfsdfsdfsdfsdfsdfdsf 3
              Row(
                 children: [
                  Container(
                    
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.blue,
                      child: Image.asset('assets/catastro.png'),
                    ),
                  ),
                  Container(
                    width: 210,
                    child: Column(
                      children: [
                        Text(
                          'CATASTRO',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'Excepción del ITP sobre el valor de Catastro para los compradores iniciales.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                                 ],
              ),
              Divider(color: Colors.black,), /////asdasdasdasdasdasdasdasdasd  4

              Row(
                 children: [
                  Container(
                    
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.blue,
                      child: Image.asset('assets/irpf.png'),
                    ),
                  ),
                  Container(
                    width: 210,
                    child: Column(
                      children: [
                        Text(
                          'IRPF e IRAE',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'En caso de alquiler de la unidad, tienen exoneraciones de IRPF y de IRAE por el plazo de 10 años.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                                 ],
              ),
              Divider(color: Colors.black,), 
            ],
          ),
        );
      },
    );
  }
}
