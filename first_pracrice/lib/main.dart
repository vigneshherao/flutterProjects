import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(practice());
}

class practice extends StatelessWidget {
  const practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firt(),
      theme: ThemeData(primaryColor: Colors.orange),
    );
  }
}

class firt extends StatelessWidget {
  const firt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "new page",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 60,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("click"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(backgroundColor: Colors.blue),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Center(
                  child: Text(
                    "news page",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 60,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("click"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(backgroundColor: Colors.blue),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
