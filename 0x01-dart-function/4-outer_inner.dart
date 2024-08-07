void outer(String name, String id) {
  String inner() {
    List<String> nameParts = name.split(" ");

    String lastName = nameParts[0];
    String firstName = nameParts[1];
    String firstInitial = firstName[0];
    return ("Hello Agent $firstInitial.$lastName your id is $id");
  }

  print(inner());
}

String inner() {
  return "Hello";
}
