int strStr(String haystack, String needle) {
  int ans = -1;
  int firstWord = 0, lastWord = needle.length - 1;
  while (lastWord < haystack.length) {
    bool finished = true;
    for (int i = firstWord; i < lastWord + 1; i++) {
      if (haystack[i] != needle[i - firstWord]) {
        firstWord++;
        lastWord++;
        finished = false;
        break;
      }
    }
    if (finished) {
      print(1);
      print(firstWord);
      ans = firstWord;
      return ans;
    }
  }
  print(ans);
  return ans;
}

void main() {
  strStr("sadbutsad", "z");
  strStr("leetcode", "co");
}
