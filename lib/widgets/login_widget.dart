import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/widgets.dart' show AnimatedLoginOne;

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetTiles = <Widget>[
      ListTile(
        leading: Icon(
          Icons.lock_outline,
          color: Colors.blue,
        ),
        title: Text("Login Animated I"),
        //subtitle: Text("List of login design."),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return AnimatedLoginOne();
          }));
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Login Widgets")),
      body: ListView(
        children: _widgetTiles,
      ),
    );
  }
}
