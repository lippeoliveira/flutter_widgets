import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/widgets.dart' show LoginWidget, MenuWidget;

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetTiles = <Widget>[
      ListTile(
        leading: Icon(
          Icons.lock_outline,
          color: Colors.blue,
        ),
        title: Text("Login Widgets"),
        subtitle: Text("List of login design."),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return LoginWidget();
          }));
        },
      ),
      ListTile(
        leading: Icon(
          Icons.lock_outline,
          color: Colors.blue,
        ),
        title: Text("Menu Widgets"),
        subtitle: Text("List of menu design."),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return MenuWidget();
          }));
        },
      )
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Flutter Widgets"),
          ),
        ),
        body: ListView(
          children: _widgetTiles,
        ),
      ),
    );
  }
}
