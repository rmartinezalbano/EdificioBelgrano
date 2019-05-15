import 'package:flutter/material.dart';

class Consulta {
  final String nombre;
  final String correo;
  final String telefono;
  final String mensaje;
  final String user;

  Consulta(
      {@required this.nombre,
      @required this.correo,
      @required this.telefono,
      @required this.mensaje,
      @required this.user});
}
