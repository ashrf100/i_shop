abstract class ProductsLocalDataSource {}

/*
class ProductsLocalDataSourceImpl implements ProductsLocalDataSource {
  final SharedPreferences sharedPreferences;

  ProductsLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<Unit> cacheSearchTexts(List<String> searchTexts) async {
 
    await sharedPreferences.setStringList(AppKeys.RECENT_SEARCH, searchTexts);
    return Future.value(unit);
  }

  @override
  List<String> getCacheSearchTexts() {
    final cachedSearchTexts =
        sharedPreferences.getStringList(AppKeys.RECENT_SEARCH);

    if (cachedSearchTexts != null) {
      return cachedSearchTexts;
    } else {
      throw CacheErrorException();
    }
  }
}
*/