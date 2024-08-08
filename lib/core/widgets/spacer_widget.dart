import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  final double height;
  final double width;

  const SpacerWidget._({this.height = 0, this.width = 0});

  factory SpacerWidget.vertical({required double height}) {
    return SpacerWidget._(height: height);
  }

  factory SpacerWidget.horizontal({required double width}) {
    return SpacerWidget._(width: width);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width);
  }
}
