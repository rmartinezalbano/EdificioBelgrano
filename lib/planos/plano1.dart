import 'package:flutter/material.dart';

class Plano1Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Plano1PageState();
  }
}

class Plano1PageState extends State<Plano1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10),
          Text(
            'Planta Baja',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Image.asset(
            'assets/plantabaja.jpg', 
            width: MediaQuery.of(context).size.width,
          ),
          
        ],
      ),
    );
  }
}
