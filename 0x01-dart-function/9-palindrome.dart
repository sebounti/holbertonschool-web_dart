bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  for (int i = 0; i < s.length / 2; i++) {
    if (s[i] != s[s.length - i - 1]) {
      return false;
    }
  }
  return true;
}
