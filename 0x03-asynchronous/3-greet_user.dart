import 'dart:async';
import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String UserData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(UserData);
    String username = userMap['username'];
    return 'Hello $username';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool credentialsValid = await checkCredentials();
    if (credentialsValid) {
      print('There is a user: true');
      return (await greetUser());
    } else {
      print('There is a user: false');
      return 'Wongs credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
