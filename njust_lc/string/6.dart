String convert(String s, int numRows) {
  int flag = 0;
  bool utd = true;
  List<String> ans = List.filled(numRows, '');
  for (int i = 0; i < s.length; i++) {
    ans[flag] = '${ans[flag]}${s[i]}';
    if (utd) {
      if (flag == numRows - 1) {
        if (flag == 0) {
          continue;
        }
        utd = false;
        flag--;
        continue;
      }
      flag++;
    }
    if (!utd) {
      if (flag == 0) {
        utd = true;
        flag++;
        continue;
      }
      flag--;
    }
  }
  String res = '';
  ans.forEach((element) {
    res += element;
  });
  print(res);
  return res;
}

main() {
  convert("PAYPALISHIRING", 3);
}
