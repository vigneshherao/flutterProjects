import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  final String name;

  const screen2({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("go back"),
            ),
            Text(name)
          ],
        ),
      )),
    );
  }
}
