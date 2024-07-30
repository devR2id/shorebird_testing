import 'dart:convert';

import 'package:crypto/crypto.dart';

class CryptoService {
  String generateSha256Hash(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
