import 'package:flutter/material.dart';
import 'package:i_shop/core/func/configure_system_uI.dart';
import 'package:i_shop/ishop.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  configureSystemUI();
  runApp(IShop());
}
