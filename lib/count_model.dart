class CounterModel {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  void modifierCounter(Function func) {
    _counter = func(_counter);
  }
}
