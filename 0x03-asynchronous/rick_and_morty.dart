import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    // Fetch data from the Rick and Morty API
    final response = await http.get(
      Uri.parse("https://rickandmortyapi.com/api/character"),
    );

    // Decode the JSON response
    var jsonResponse = jsonDecode(response.body);

    // Check if the JSON response contains the 'results' key
    if (jsonResponse['results'] != null) {
      // Get the list of characters
      var characters = jsonResponse['results'] as List;

      // Iterate through the list and print each character's name
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('No results found');
    }
  } catch (err) {
    print('error caught: $err');
  }
}
