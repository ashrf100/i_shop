import 'package:hive/hive.dart';
import 'package:i_shop/core/const/app_assets.dart';
import 'package:i_shop/features/products/data/models/products_model.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initializeHive() async {
  // add to the main
  //  WidgetsFlutterBinding.ensureInitialized();

  try {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter(AppProductAdapter());
    Hive.registerAdapter(ReviewAdapter());
    await Hive.openBox<AppProduct>(AppAssets.productsBox);
  } catch (e) {
    print('Error initializing Hive: $e');
  }
}
