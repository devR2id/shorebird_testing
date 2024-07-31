import 'dart:convert';
import 'package:http/http.dart' as http;

class CatApiService {
  static const String _baseUrl = 'https://api.thecatapi.com/v1/images/search';

  Future<List<String>> fetchCatImages({int limit = 10}) async {
    final response = await http.get(Uri.parse('$_baseUrl?limit=$limit'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((cat) => cat['url'] as String).toList();
    } else {
      throw Exception('Failed to load cat images');
    }
  }
}
