import 'dart:convert';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;


mixin ConnectedModel on Model {
  
  
}

mixin ConsultaModel on ConnectedModel {
  
  void consulta(String nombre, String correo, String telefono, String mensaje) {
    final Map<String, dynamic> consulta = {
      'nombre': nombre,
      'correo': correo,
      'telefono': telefono,
      'mensaje': mensaje,
      
    };

    http.post('https://belgrano-d4060.firebaseio.com/consultas.json',
        body: json.encode(consulta));
    /* final Consulta newConsulta = Consulta(
        nombre: nombre,
        correo: correo,
        telefono: telefono,
        mensaje: mensaje,
        user: _authenticatedUser.mail);
    _consultas.add(newConsulta); */
  }
}

mixin UserModel on ConnectedModel {
  
}
