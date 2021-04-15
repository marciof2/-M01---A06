import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  add() {
    setState(() {
      count++;
    });
  }

  minus() {
    setState(() {
      count--;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              '$count',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(minus, Icons.remove),
          CustomButton(reset, Icons.autorenew),
          CustomButton(add, Icons.add),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Function func;
  final IconData icon;
  CustomButton(this.func, this.icon, {Key key}) : super(key: key) {}
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        func();
      },
      child: Icon(icon),
    );
  }
}
