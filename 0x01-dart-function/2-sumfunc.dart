int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  int addition = add(a, b);
  int substractioon = sub(a, b);
  return 'Add $a + $b = $addition\nSub $a - $b = $substractioon';
}
