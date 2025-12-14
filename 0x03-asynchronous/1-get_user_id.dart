import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = json.decode(userData);
    return userMap['id'];
}
