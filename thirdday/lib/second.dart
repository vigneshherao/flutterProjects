import 'dart:html';

import 'package:flutter/material.dart';

class second extends StatelessWidget {
  final String name;

  const second({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child:Column(
        children: [
          TextButton(onPressed: (){}, child: Text(name)
        ],
      )
      
      
      ),
    );
  }
}
