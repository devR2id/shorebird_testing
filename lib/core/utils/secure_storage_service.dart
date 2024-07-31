import 'package:apptesting/core/errors/exceptions.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  static final SecureStorageService _instance = SecureStorageService._internal();

  factory SecureStorageService() => _instance;

  SecureStorageService._internal();

  Future<void> write(String key, String value) async {
    try {
      await _secureStorage.write(key: key, value: value);
    } catch (e) {
      throw SecureStorageException('Failed to write to secure storage: $e');
    }
  }

  Future<String?> read(String key) async {
    try {
      return await _secureStorage.read(key: key);
    } catch (e) {
      throw SecureStorageException('Failed to read from secure storage: $e');
    }
  }

  Future<void> delete(String key) async {
    try {
      await _secureStorage.delete(key: key);
    } catch (e) {
      throw SecureStorageException('Failed to delete from secure storage: $e');
    }
  }

  Future<void> deleteAll() async {
    try {
      await _secureStorage.deleteAll();
    } catch (e) {
      throw SecureStorageException('Failed to delete all from secure storage: $e');
    }
  }
}
