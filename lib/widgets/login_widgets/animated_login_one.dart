import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedLoginOne extends StatefulWidget {
  @override
  _AnimatedLoginOneState createState() => _AnimatedLoginOneState();
}

class _AnimatedLoginOneState extends State<AnimatedLoginOne>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _formAnimationController;
  Animation<double> _containerScaleHeight;
  Animation<double> _containerTransitionMiddle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
      duration: Duration(milliseconds: 500),
    );
    ;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _containerScaleHeight =
        Tween<double>(begin: 100.0, end: MediaQuery.of(context).size.height)
            .animate(_controller);
    _containerTransitionMiddle = Tween<double>(
            begin: 50, end: (MediaQuery.of(context).size.height / 2) - 50)
        .animate(_controller);

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget child) {
                  return Container(
                    color: Colors.blue,
                    height: _containerScaleHeight.value,
                  );
                },
              ),
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget child) {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: _containerTransitionMiddle.value),
                      child: Container(
                        color: Colors.pink,
                        height: 100.0,
                        width: 100.0,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
          new Expanded(
            child: Center(
              child: FadeTransition(
                opacity: Tween(begin: 1.0, end: 0.0).animate(_controller),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                    //elevation: 10,
                    color: Colors.blueAccent,
                    child: Text(
                      "Execute",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      _controller.forward();

                      Timer(new Duration(seconds: 5), () {
                        _controller.reverse();
                      });
                    })
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
