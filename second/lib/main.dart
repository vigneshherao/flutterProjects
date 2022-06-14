import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black12),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (hai, $index) {
              return ListTile(
                title: Text("vignesh list style"),
                subtitle: Text("hello good morining"),
                leading: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                ),
                trailing: Text("17:00"),
              );
            },
            separatorBuilder: (hai, $index) {
              return Divider();
            },
            itemCount: 30),
      ),
    );
  }
}
