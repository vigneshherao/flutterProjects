import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: second(),
    );
  }
}

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
              children: List.generate(
        50,
        (index) => Column(
          children: [
            Text("hello $index"),
            Divider(
              height: 55,
              thickness: 2,
              color: Color.fromARGB(255, 178, 178, 178),
            )
          ],
        ),
      ))),
    );
  }
}
