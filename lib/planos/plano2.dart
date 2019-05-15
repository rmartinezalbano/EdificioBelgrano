import 'package:flutter/material.dart';

class Plano2Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Plano2PageState();
  }
}

class Plano2PageState extends State<Plano2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10),
          Text(
            'Primer y Segundo Piso',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Image.asset(
            'assets/primero-y-segundo.jpg', 
            width: MediaQuery.of(context).size.width,
          ),
          
        ],
      ),
    );
  }
}
