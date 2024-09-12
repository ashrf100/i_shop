import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:i_shop/core/func/configure_system_uI.dart';
import 'package:i_shop/core/helper/bloc_observer.dart';
import 'package:i_shop/core/hive/hive_init.dart';
import 'package:i_shop/firebase_options.dart';
import 'package:i_shop/ishop.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await di.init();
  await initializeHive();
  configureSystemUI();
  runApp(
    Phoenix(child: const IShop()), 
  );
}
