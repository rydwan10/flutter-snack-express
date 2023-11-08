import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:snack_express/injector/injector.dart';
import 'package:snack_express/utils/local_storage/local_storage.dart';
import 'package:snack_express/utils/local_storage/local_storage_keys.dart';

class HiveHydratedBlocStorage implements HydratedStorage {
  Box box;

  static Future<HiveHydratedBlocStorage> getInstance() async {
    await Hive.initFlutter();
    final encryptionKey = await _getEncryptionKey();
    Box box = await Hive.openBox(
      'myBoxs',
      encryptionCipher: HydratedAesCipher(encryptionKey),
    );
    return HiveHydratedBlocStorage(box);
  }

  static Future<List<int>> _getEncryptionKey() async {
    final encryptionKey = <int>[];

    final securedEncryptionKey = await Injector()
        .find<SecureLocalStorage>()
        .read(LocalStorageKeys.encryptAesKey);

    if (securedEncryptionKey != null) {
      final decodedEncryptionKey =
          List<int>.from(jsonDecode(securedEncryptionKey));
      encryptionKey.addAll(decodedEncryptionKey);
    } else {
      encryptionKey.addAll(Hive.generateSecureKey());
      await Injector().find<SecureLocalStorage>().write(
            LocalStorageKeys.encryptAesKey,
            value: jsonEncode(encryptionKey),
          );
    }
    return encryptionKey;
  }

  HiveHydratedBlocStorage(this.box);

  @override
  dynamic read(String key) {
    return box.get(key);
  }

  @override
  Future<void> write(String key, dynamic value) async {
    return box.put(key, value);
  }

  @override
  Future<void> delete(String key) async {
    return box.delete(key);
  }

  @override
  Future<int> clear() async {
    return box.clear();
  }

  @override
  Future<void> close() async {
    return box.close();
  }
}
