import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/widgets.dart'
    show AnimatedMenuWithBannerOne;

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetTiles = <Widget>[
      ListTile(
        leading: Icon(
          Icons.lock_outline,
          color: Colors.blue,
        ),
        title: Text("Animated Menu With Banner I"),
        //subtitle: Text("List of login design."),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return AnimatedMenuWithBannerOne();
          }));
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Menu Widgets")),
      body: ListView(
        children: _widgetTiles,
      ),
    );
  }
}
