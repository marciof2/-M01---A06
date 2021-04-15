import 'package:mvc/count_model.dart';

class CounterController {
  final model = CounterModel();

  String getCounter() {
    return model.counter.toString();
  }

  void incrementCounter() {
    model.modifierCounter(add);
  }

  void decrementCounter() {
    model.modifierCounter(minus);
  }

  void resetCounter() {
    model.modifierCounter(reset);
  }

  add(int n) {
    return n += 1;
  }

  minus(int n) {
    return n -= 1;
  }

  reset(int n) {
    return n = 0;
  }
}
