import 'package:flutter/material.dart';

class Piso1Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Piso1PageState();
  }
}

class Piso1PageState extends State<Piso1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10),
          Text(
            'Apto 102',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 10),
          Image.asset(
            'assets/precio102-al-402.jpg',
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              '1 Dormitorio',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'm2 cubierto 47,61',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'm2 terraza 2,50',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Comunes 6,76',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'm2 totales 56,87',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Inversión USD 98.500',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            color: Colors.black,
          ),

          ////// anfosnvjdfnvjsdnvjsdnvjsdnvjsdnvjds 1ero
          SizedBox(height: 10),
          Text(
            'Apto 103',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Image.asset(
           'assets/precio103-203.jpg',
            width: MediaQuery.of(context).size.width,
          ),

          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Monoambiente',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'm2 cubierto 36,15',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'm2 terraza 3,90',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Comunes 5,14',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'm2 totales 45,19',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Inversión USD 86.000',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
