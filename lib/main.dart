import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:i_shop/ishop.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => IShop(), // Wrap your app
      ),
    );

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Screen 1'));
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Screen 2'));
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Screen 3'));
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Screen 4'));
  }
}
