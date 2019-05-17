import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DrawerPageState();
  }
}

class DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            leading: Icon(Icons.view_quilt),
            title: Text('Pisos'),
            onTap: () => Navigator.pushReplacementNamed(context, '/pisos'),
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
    );
  }
}
