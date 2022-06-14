import 'package:flutter/material.dart';
import 'package:flyhight/screen2.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primaryColor: Colors.black12),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  trailing: Text('$index'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                  ),
                  title: Text("hello"),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return screen2(
                        name: '$index',
                      );
                    }));
                  },
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 30)),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//           child: Center(
//         child: Column(
//           children: [
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
//                     return screen2();
//                   }));
//                 },
//                 child: Text("go to 2"))
//           ],
//         ),
//       )),
//     );
//   }
// }
