import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final url = Uri.parse('https://rickandmortyapi.com/api/character');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final characters = data['results'] as List;
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      throw 'Failed to load data with status code: ${response.statusCode}';
    }
  } catch (error) {
    print('error caught: $error');
  }
}
