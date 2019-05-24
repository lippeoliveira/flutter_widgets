import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/blocs/blocs.dart' show ValueBloc;

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  Widget _textValue(String v) {
    return Text(
      v,
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("reconstruindo");

    ValueBloc valueBloc = BlocProvider.getBloc<ValueBloc>();

    return Material(
      color: Color.lerp(Colors.red, Colors.purple, valueBloc.value),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StreamBuilder<String>(
            stream: valueBloc.valueStringOut,
            initialData: "No value inputed.",
            builder: (BuildContext context, snapshot) {
              return _textValue(snapshot.data);
            },
          ),
          Container(
            height: 25,
          ),
          StreamBuilder<double>(
            stream: valueBloc.valueOut,
            initialData: 0,
            builder: (context, snapshot) {
              return Slider(
                  activeColor: Colors.white,
                  inactiveColor: Colors.white,
                  min: 0.0,
                  max: 1.0,
                  onChanged: valueBloc.onChangeValue,
                  value: snapshot.data);
            },
          ),
        ],
      ),
    );
  }
}
