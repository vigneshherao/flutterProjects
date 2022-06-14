import 'dart:html';

import 'package:flutter/material.dart';
import 'package:thirdday/second.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Home(),
      // routes: {
      //   'second': (ctx) {
      //     return second();
      //   }
      // }
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("whatspp list"),
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return second(name: 'whatspp $index');
                    }));
                  },
                  title: Text('whatspp $index'),
                  trailing: Text("15mins ago"),
                  leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80")),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 40)),
    );
  }
}
