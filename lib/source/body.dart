import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Surprise MF",
          style: TextStyle(
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
