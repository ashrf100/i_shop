import 'package:hive/hive.dart';
import 'package:i_shop/core/const/app_assets.dart';
import 'package:i_shop/features/auth/domain/entities/app_user.dart';
import 'package:i_shop/features/products/data/models/products_model.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:path_provider/path_provider.dart';

// add to the main WidgetsFlutterBinding.ensureInitialized();
Future<void> initializeHive() async {
  try {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter(AppProductAdapter());
    Hive.registerAdapter(ReviewAdapter());
    Hive.registerAdapter(AppUserAdapter());

    await Hive.openBox<AppProduct>(AppAssets.productsBox);
    await Hive.openBox<AppUser>(AppAssets.userBox);
  } catch (e) {
    print('Error initializing Hive: $e');
  }
}
