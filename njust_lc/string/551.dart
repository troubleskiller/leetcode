bool checkRecord(String s) {
  int curL = 0;
  int absent = 0;
  for (int i = 0; i < s.length; i++) {
    if (s[i] == 'L') {
      if (++curL == 3) return false;
    } else {
      curL = 0;
      if (s[i] == 'A') {
        absent++;
      }
    }
  }
  return absent < 2;
}
