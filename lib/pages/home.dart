import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'package:belgrano/scoped_models/main_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  void initState() {
   
      nuevoIngreso();
    super.initState();
  }

   void nuevoIngreso(){
    final Map<String, dynamic> consulta = {
      'NuevoIngreso': 'Nuevo', 
    };
    http.post('https://belgrano-d4060.firebaseio.com/ingresos.json',
        body: json.encode(consulta));

}


  
int opcion = 0;

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
              onTap: () => Navigator.pushReplacementNamed(context, '/contacto'),
            ),
            Divider(),
            
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text('Edificio'),
              onTap: () => Navigator.pushReplacementNamed(context, '/edificio'),
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
              onTap: () => Navigator.pushReplacementNamed(context, '/exoneraciones'),
            ),
            Divider(),
            
            
          ],
        ),
      ),

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
            if (index == 1){
              setState(() {
               Navigator.pushReplacementNamed(context, '/edificio'); 
              });
            }
            else if (index == 2){
              setState(() {
               Navigator.pushReplacementNamed(context, '/exoneraciones'); 
              });
            }
            else return setState(() {
              opcion = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Inicio',style: TextStyle(color: Colors.black,))),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_city), title: Text('Edificio', style: TextStyle(color: Colors.black))),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), title: Text('Exoneraciones', style: TextStyle(color: Colors.black))),
                
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
                SizedBox(height: 10),
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
                Container(child: Image.asset('assets/render.jpeg'), ),
                SizedBox(
                  height: 15,
                ),
                Container(padding: EdgeInsets.only(left: 10, right: 10),child: Text('El m² más bajo + garage de regalo', textAlign: TextAlign.center,style: TextStyle(fontSize: 20, color: Colors.blue,fontWeight: FontWeight.bold),),),
                SizedBox(
                  height: 10,
                ),
                Container(padding: EdgeInsets.only(left: 10, right: 10),child: Text('Combo 2 aptos con gge sin costo.', textAlign: TextAlign.center,style: TextStyle(fontSize: 20, color: Colors.blue,fontWeight: FontWeight.bold),),),
                SizedBox(
                  height: 25,
                ),

                
              ],
            ),
          ),
        );
      },
    );
  }
}
