import '2-util.dart';

Future<void> getUser() async {
  try {
    String data = await fetchUser();
    print(data);
  } catch (e) {
    print('error caught: $e');
  }
}
