import 'package:flutter/material.dart';

void main() {
  runApp(MyStateFulApp());
}

class MyStateLessApp extends StatelessWidget {  //st

  int counter = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateless widget"),
        ),
        body: Center(  // Scaffold property
          child: Text(counter.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: (){
            counter++;
            print(counter);
          },
        ),
      ),
    );
  }
}

class MyStateFulApp extends StatefulWidget {
  @override
  State<MyStateFulApp> createState() => _MyStateFulAppState();
}

class _MyStateFulAppState extends State<MyStateFulApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull widget"),
        ),
        body: Center(  // Scaffold property
          child: Text(counter.toString(),
            style: TextStyle(fontSize: 40),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: (){
            setState((){
              counter++;
              print(counter);
            }); // method to apply changes
          },
        ),
      ),
    );
  }
}

