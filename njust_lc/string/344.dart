void reverseString(List<String> s) {
  int left = 0, right = s.length - 1;
  late String tmp;
  while (left < right) {
    tmp = s[left];
    s[left++] = s[right];
    s[right--] = tmp;
  }
  print(s);
}

void main() {
  reverseString([
    "h",
    "e",
    "l",
    "l",
  ]);
}
