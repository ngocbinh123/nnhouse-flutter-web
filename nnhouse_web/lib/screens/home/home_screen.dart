import 'package:flutter/material.dart';
import 'package:nnhouse_web/screens/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [AppBar()],
      ),
    );
  }
}
