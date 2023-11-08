import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureLocalStorage {
  static AndroidOptions _getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);

  final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());

  Future<Map<String, String>> readAll() async => await storage.readAll();

  Future<String?> read(String key) async => await storage.read(key: key);

  Future<void> write(String key, {String? value}) async =>
      await storage.write(key: key, value: value);

  Future<void> deleteAll() async => await storage.deleteAll();

  Future<void> delete(String key) async => await storage.delete(key: key);
}
