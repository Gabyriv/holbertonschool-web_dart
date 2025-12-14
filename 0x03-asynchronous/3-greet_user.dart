import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final usernameRegex = RegExp(r'"username"\s*:\s*"([^"]+)"');
    final match = usernameRegex.firstMatch(userData);
    final username = match != null ? match.group(1) : null;
    if (username != null) {
      return 'Hello $username';
    } else {
      return 'error caught: Username not found';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final hasUser = await checkCredentials();
    print('There is a user: $hasUser');
    if (hasUser) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
