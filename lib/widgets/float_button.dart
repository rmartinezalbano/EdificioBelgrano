import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:belgrano/scoped_models/main_model.dart';

class FloatingButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FloatingButtonState();
  }
}

class FloatingButtonState extends State<FloatingButton>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          height: 70,
          width: 56,
          child: ScaleTransition(
            scale: CurvedAnimation(
                parent: _controller,
                curve: Interval(0.0, 1.0, curve: Curves.easeOut)),
            child: FloatingActionButton(
              heroTag: 'planos',
              backgroundColor: Colors.blue,
              child: Icon(
                 Icons.grid_on, 
                    
                size: 25,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/planos');
                
              },
            ),
          ),
        ),
        
        Container(
          height: 70,
          width: 56,
          child: FloatingActionButton(
            heroTag: 'options',
            backgroundColor: Colors.red,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget child) {
                return Transform(
                  alignment: FractionalOffset.center,
                  transform:
                      Matrix4.rotationZ(_controller.value * 0.5 * math.pi),
                  child: Icon(_controller.isDismissed ? Icons.more_vert : Icons.close, size: 25),
                );
              },
            ),
            onPressed: () {
              if (_controller.isDismissed) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
            },
          ),
        ),
      ]);
    });
  }
}
