import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CupertinoNavigationBar(
          middle: Text("Guia UnB"),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}