import 'package:hive/hive.dart';
import 'package:i_shop/core/error/app_exception.dart';

class HiveService<T> {
  final String boxName;

  HiveService(this.boxName);

  Future<Box<T>> _openBox() async {
    try {
      return await Hive.openBox<T>(boxName);
    } catch (e) {
      throw HiveInitializationException();
    }
  }

  Future<void> put(String key, T item) async {
    try {
      final box = await _openBox();
      await box.put(key, item);
    } catch (e) {
      throw HiveOperationException('Failed to save item to Hive: $e');
    }
  }

  Future<T?> get(String key) async {
    try {
      final box = await _openBox();
      final item = box.get(key);
      if (item == null) {
        throw HiveDataNotFoundException();
      }
      return item;
    } catch (e) {
      throw HiveOperationException('Failed to retrieve item from Hive: $e');
    }
  }

  Future<void> delete(String key) async {
    try {
      final box = await _openBox();
      await box.delete(key);
    } catch (e) {
      throw HiveOperationException('Failed to delete item from Hive: $e');
    }
  }

  Future<List<T>> getAll() async {
    try {
      final box = await _openBox();
      final values = box.values.toList();

      return values.isNotEmpty
          ? values.reversed.toList()
          : throw HiveDataNotFoundException();
    } catch (e) {
      throw HiveOperationException(
          'Failed to retrieve all items from Hive: $e');
    }
  }

  Future<List<T>> getValuesInRange(int startIndex, int endIndex) async {
    try {
      final box = await _openBox();
      final int length = box.length;

      final int adjustedStartIndex = (length - 1 - startIndex).clamp(0, length);
      final int adjustedEndIndex = (length - 1 - endIndex + 1).clamp(0, length);

      if (adjustedEndIndex >= adjustedStartIndex) {
        return [];
      }

      final List<T> result = [];
      for (int i = adjustedStartIndex; i >= adjustedEndIndex; i--) {
        final value = box.getAt(i);
        if (value != null) {
          result.add(value);
        }
      }

      return result;
    } catch (e) {
      throw HiveOperationException(
          'Failed to retrieve items in range from Hive: $e');
    }
  }

  Future<void> deleteAll() async {
    try {
      final box = await _openBox();
      await box.clear();
    } catch (e) {
      throw HiveOperationException('Failed to clear Hive box: $e');
    }
  }
}
