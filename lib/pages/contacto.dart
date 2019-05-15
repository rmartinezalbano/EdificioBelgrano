import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:belgrano/scoped_models/main_model.dart';

class ContactoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContactoPageState();
  }
}

class ContactoPageState extends State<ContactoPage> {
  final Map<String, dynamic> _formData = {
    'nombre': null,
    'correo': null,
    'telefono': null,
    'mensaje': null,
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm(Function consulta) {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    consulta(_formData['nombre'], _formData['correo'],
            _formData['telefono'], _formData['mensaje']);
        
      
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Mensaje enviado correctamente'),
                content: Text('Te responderemos a la brevedad !'),
                actions: <Widget>[
                  FlatButton(
                      child: Text('Volver'),
                      onPressed: (){
                        setState(() {
               Navigator.pushReplacementNamed(context, '/'); 
              });

                      })
                ],
              );
            });
      
    


   
  }

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
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/exoneraciones'),
            ),
            Divider(),
          ],
        ),
      ),

      
      appBar: AppBar(
        title: Text('Contacto'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Déjanos un mensaje y te contestaremos a la brevedad…',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 14),
                        labelText: 'Nombre'),
                    onSaved: (String value) {
                      _formData['nombre'] = value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 14),
                        labelText: 'Correo'),
                    onSaved: (String value) {
                      _formData['correo'] = value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Telefono',
                      labelStyle: TextStyle(fontSize: 14),
                    ),
                    keyboardType: TextInputType.number,
                    onSaved: (value) {
                      _formData['telefono'] = value;
                    },
                  ),
                  TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: 'Mensaje',
                      labelStyle: TextStyle(fontSize: 14),
                    ),
                    onSaved: (value) {
                      _formData['mensaje'] = value;
                    },
                  ),
                  SizedBox(height: 10.0),
                  ScopedModelDescendant<MainModel>(
                    builder:
                        (BuildContext context, Widget child, MainModel model) {
                      return RaisedButton(
                        child: Text('Enviar consulta'),
                        onPressed: (){_submitForm(model.consulta);},
                      );
                    },
                  ),
                  SizedBox(height: 20,),
                  Container(child: Text('VENDE EN EXCLUSIVIDAD:',style: TextStyle(fontWeight: FontWeight.bold),)),
                  Image.asset('assets/logoMoebius.png', width: MediaQuery.of(context).size.width-100,  ),
                  Container(child: Text('Tel.: +598 99 311 511'),),
                  Container(child: Text('Montevideo - Uruguay'),),
                ],
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
