import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  final double height;
  final Color color;
  final String string;

  const TestWidget({
    Key? key,
    required this.height,
    required this.color,
    required this.string,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color,
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          string,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
