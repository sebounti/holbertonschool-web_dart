import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  const url =
      'https://rickandmortyapi.com/api/character'; // Rick and Morty API

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      final characters = data['results'];

      for (var character in characters) {
        print(character['name']);
      }

  
    } else {
      print('Error: Failed to load characters');
    }
  } catch (e) {
    print('Error caught: $e');
  }
}
