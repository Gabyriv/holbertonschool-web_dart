import 'dart:convert';

import 'package:http/http.dart' as http;

/// Prints all Rick and Morty character names (one per line).
///
/// Requirements:
/// - Uses the Rick and Morty API to fetch data
/// - Must use try/catch
/// - If an error occurs, returns: `error caught: <error>`
///
/// On success, returns an empty string.
Future<String> printRmCharacters() async {
  try {
    // The API is paginated. We'll keep following `info.next` until it is null.
    Uri? nextUrl = Uri.parse('https://rickandmortyapi.com/api/character');

    while (nextUrl != null) {
      final response = await http.get(nextUrl);
      if (response.statusCode != 200) {
        throw 'Request failed with status: ${response.statusCode}';
      }

      final decoded = jsonDecode(response.body);
      if (decoded is! Map) {
        throw 'Invalid response format';
      }

      final results = decoded['results'];
      if (results is! List) {
        throw 'Missing results';
      }

      for (final item in results) {
        if (item is Map && item['name'] is String) {
          print(item['name']);
        } else {
          throw 'Invalid character data';
        }
      }

      final info = decoded['info'];
      final next = (info is Map) ? info['next'] : null;
      nextUrl = next is String ? Uri.tryParse(next) : null;
    }

    return '';
  } catch (error) {
    return 'error caught: $error';
  }
}


