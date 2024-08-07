// Fonction auxiliaire pour vérifier si une chaîne est un palindrome
bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  int left = 0;
  int right = s.length - 1;
  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

// Fonction pour trouver la plus longue sous-chaîne palindromique
String longestPalindrome(String s) {
  if (s.isEmpty) {
    return 'none';
  }

  String longestPalindrome = 'none';
  int maxLength = 0;

  // Itérer à travers tous les points de départ possibles pour les sous-chaînes
  for (int start = 0; start < s.length; start++) {
    for (int end = start + 2; end < s.length; end++) {
      String substring = s.substring(start, end + 1);
      if (isPalindrome(substring)) {
        if (substring.length > maxLength) {
          maxLength = substring.length;
          longestPalindrome = substring;
        }
      }
    }
  }

  return longestPalindrome;
}
