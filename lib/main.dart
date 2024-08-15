import 'package:flutter/material.dart';
import 'package:i_shop/core/func/configure_system_uI.dart';
import 'package:i_shop/core/hive/hive_init.dart';
import 'package:i_shop/ishop.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  await di.init();
  await initializeHive();
  configureSystemUI();
  runApp(IShop());
}

