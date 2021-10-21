import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: 'Contador 2',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infotext = "Entre";

  void _reset() {
    setState(() {
      _people = 0;
      _infotext = "Entre!";
    });

  }

  void _counter(){
    _people++;
    print(_people);
  }

  void _chancepeople(int delta) {
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infotext = "Oque está tentando fazer?";
        _people = 0;
      } else if (_people <= 10) {
        _infotext = "Entre!";
      } else {
        _infotext = "Cheio, Por favor Espere!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contador De Pessoas"),
          centerTitle: true,
          backgroundColor: Colors.lime,
          actions: [IconButton(onPressed: _reset, icon: Icon(Icons.refresh))],
        ),
    backgroundColor: Colors.black12,

      body: Container(
        height: 500.0,
        width: 500.0,
        color: Colors.white70,
        child: Center(
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
      ))
        ,
      ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.lime,
            onPressed: () {
              setState(() {
                _counter();
              });
            }));
  }
}
