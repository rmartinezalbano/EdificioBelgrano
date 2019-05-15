import 'package:flutter/material.dart';

class Plano3Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Plano3PageState();
  }
}

class Plano3PageState extends State<Plano3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10),
          Text(
            'Tercer y Cuarto Piso',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Image.asset(
            'assets/tercer-y-cuarto.jpg', 
            width: MediaQuery.of(context).size.width,
          ),
          
        ],
      ),
    );
  }
}
