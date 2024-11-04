String longestUniqueSubstring(String str) {
  if (str.isEmpty) {
    return '';
  }

  // Variables pour garder une trace de la fenêtre actuelle et de la plus longue sous-chaîne trouvée
  int start = 0;
  int maxLength = 0;
  String longestSubstring = '';

  // Utilisation d'un ensemble pour garder une trace des caractères uniques dans la fenêtre actuelle
  Set<String> uniqueChars = {};

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    // Si le caractère est déjà dans l'ensemble, déplacer le début de la fenêtre
    while (uniqueChars.contains(currentChar)) {
      uniqueChars.remove(str[start]);
      start++;
    }

    // Ajouter le caractère actuel à l'ensemble
    uniqueChars.add(currentChar);

    // Mettre à jour la plus longue sous-chaîne trouvée
    int currentLength = end - start + 1;
    if (currentLength > maxLength) {
      maxLength = currentLength;
      longestSubstring = str.substring(start, end + 1);
    }
  }

  return longestSubstring;
}
