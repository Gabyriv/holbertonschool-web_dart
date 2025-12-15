import 'rick_and_morty.dart';

main() async {
  final result = await printRmCharacters();
  if (result.isNotEmpty) {
    // If an error occurs, the function returns: "error caught: <error>"
    print(result);
  }
}


