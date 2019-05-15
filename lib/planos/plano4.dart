import 'package:flutter/material.dart';

class Plano4Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Plano4PageState();
  }
}

class Plano4PageState extends State<Plano4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10),
          Text(
            'Quinto Piso',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Image.asset(
            'assets/5-piso.jpg', 
            width: MediaQuery.of(context).size.width,
          ),
          
        ],
      ),
    );
  }
}
