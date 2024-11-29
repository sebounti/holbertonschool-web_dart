import 'dart:convert';
import 'package:http/http.dart' as http;

/// Fetches and prints all character names from the Rick and Morty API.
///
/// This function:
/// 1. Makes a GET request to the Rick and Morty API.
/// 2. Checks if the response was successful (200).
/// 3. If the response was successful, it decodes the JSON response and
///    prints all character names.
/// 4. If the response was not successful, it prints an error message.
/// 5. If an exception occurs, it prints the error message.
Future<void> printRmCharacters() async {
  const String apiUrl = 'https://rickandmortyapi.com/api/character';

  try {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List characters = data['results'];

      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Error: Failed to fetch characters.');
    }
  } catch (e) {
    print('error caught: $e');
  }
}
