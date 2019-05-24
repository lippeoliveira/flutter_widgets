import 'package:flutter/material.dart';

class AnimatedLoginOne extends StatefulWidget {
  @override
  _AnimatedLoginOneState createState() => _AnimatedLoginOneState();
}

class _AnimatedLoginOneState extends State<AnimatedLoginOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100.0,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    color: Colors.pink,
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
              )
            ],
          ),
          new Expanded(
            child: Container(
              height: 100,
              alignment: Alignment.topCenter,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
