import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';

class ValueBloc extends BlocBase {
  StreamController<double> _valueController = StreamController<double>.broadcast();
  double value = 0.0;

  Stream<double> get valueOut => _valueController.stream;
  Stream<String> get valueStringOut => _valueController.stream
      .map((v) => "Value: ${v.toStringAsPrecision(1)}");

  onChangeValue(double v) {
    value = v;
    _valueController.add(value);
  }

  @override
  void dispose() {
    _valueController.close();
    super.dispose();
  }
}
