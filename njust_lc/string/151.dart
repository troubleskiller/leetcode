String reverseWords(String s) {
  int left = -1;
  bool haveWord = false;
  String curAns = '';
  for (int i = 0; i < s.length; i++) {
    if (s[i] == ' ') {
      if (!haveWord) {
        continue;
      } else {
        curAns += '${s.substring(left, i)} ';
        haveWord = false;
      }
    } else {
      if (haveWord) {
        continue;
      } else {
        haveWord = true;
        left = i;
      }
    }
  }
  if (haveWord) {
    curAns += s.substring(left, s.length);
  }

  print(curAns);
  print(curAns.split(' ').reversed.skipWhile((value) => value == '').join(' '));
  return curAns.split(' ').reversed.skipWhile((value) => value == '').join(' ');
}

main() {
  reverseWords("the sky is blue");
  reverseWords("  hello world  ");
}
