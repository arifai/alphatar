import 'package:flutter/material.dart';
import 'package:alphatar/alphatar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Alphatar example app'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Alphatar(
                initials: "John Doe",
                borderRadius: BorderRadius.circular(10),
              ),
              Alphatar(
                initials: "Erick",
                backgroundColor: Colors.grey,
                borderRadius: BorderRadius.zero,
                onTap: () => print("Hi, bro!"),
              ),
              Alphatar(
                initials: "R. Richard Nowel",
                backgroundColor: Colors.orange,
              ),
              Alphatar(
                initials: "Smith",
                backgroundColor: Colors.pinkAccent,
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.zero,
              ),
              Alphatar(
                initials: "Alice",
                backgroundColor: Colors.purple[900],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                onTap: () => print("Awesome!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
