import 'package:flutter/material.dart';


class EdificioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EdificioPageState();
  }
}

class EdificioPageState extends State<EdificioPage> {
int opcion = 1;

@override
  Widget build(BuildContext context) {
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
              title: Text('Pisos'),
              
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
            body: Container(
            alignment: Alignment.topCenter,
            child: ListView(
              children: [
                Image.asset('assets/logo-footer.png'),
                            
                Container(alignment: Alignment.center,child: Text(
                  'En el espacio mas verde,',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),),
                SizedBox(height: 5),
                Container(
                  alignment: Alignment.center,child: Text(
                  'Parque Belgrano',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    background: Paint()..color = Colors.blue,
                  ),
                ),),
                SizedBox(height: 15),
                Text('Parque Belgrano: El m² más bajo + garage de regalo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Image.asset('assets/EdificioBelgrano.png'),
                SizedBox(height: 10),
                Container(padding: EdgeInsets.only(left: 10, right: 10),child: Text('Parque Belgrano es un proyecto inmobiliario ubicado en Parque Batlle, un gran parque de la ciudad caracterizado por sus excepcionales calidades paisajísticas y urbanas.', style: TextStyle(fontSize: 16),),),
                SizedBox(height: 6),
                Container(padding: EdgeInsets.only(left: 10, right: 10),child: Text('Un lugar ideal para pasear, hacer caminatas o ejercicio y disfrutar del aire puro que proporciona la zona arbolada. Rodeado de avenidas, permite un acceso rápido al centro de la ciudad, centros de salud y universidades.', style: TextStyle(fontSize: 16),),),
                SizedBox(height: 6),
                Container(padding: EdgeInsets.only(left: 10, right: 10),child: Text('¡Un rincón verde de la ciudad! ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),),
                SizedBox(height: 15),
                Container(padding: EdgeInsets.only(left: 10, right: 10),child: Text('El edificio se compone de 14 aptos desarrollados en 5 pisos: 2 Monoambientes, 6 unidades de un dormitorio, 6 unidades de dos dormitorios y 7 cocheras. ', style: TextStyle(fontSize: 16),),),
                SizedBox(height: 6),
                Container(padding: EdgeInsets.only(left: 10, right: 10),child: Text('Ocupación: Diciembre de 2020.', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),),
                SizedBox(
                  height: 25,
                ),
                Container(child: Image.asset('assets/render.jpeg'),),
                SizedBox(height: 10)

                
              ],
            ),
          ),
         
        );
      }
    
  }



