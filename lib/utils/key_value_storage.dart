import 'package:hive/hive.dart';

const BOX_NAME = 'KEY_VALUE_STORAGE';

Future<void> save<T>(String key, T value) async {
  var box = await Hive.openBox(BOX_NAME);
  await box.put(key, value);
  return;
}

Future<T> load<T>(String key) async {
  var box = await Hive.openBox(BOX_NAME);
  T value = box.get(key);
  return value;
}

Future<void> delete() async {
  var box = await Hive.openBox(BOX_NAME);
  await box.delete('name');
  return;
}
