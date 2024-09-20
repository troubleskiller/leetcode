int compress(List<String> chars) {
  String curChar = chars[0];
  int curLen = 0;
  int curIndex = 0;
  for (int i = 0; i < chars.length; i++) {
    if (chars[i] != curChar) {
      chars[curIndex++] = curChar;
      if (curLen != 1) {
        String tmp = curLen.toString();
        for (int j = 0; j < tmp.length; j++) {
          chars[curIndex++] = tmp[j];
        }
      }
      curChar = chars[i];
      curLen = 1;
    } else {
      curLen++;
    }
  }
  chars[curIndex++] = curChar;
  if (curLen != 1) {
    String tmp = curLen.toString();
    for (int j = 0; j < tmp.length; j++) {
      chars[curIndex++] = tmp[j];
    }
  }

  print(chars);
  return curIndex;
}

main() {
  compress(["a", "a", "b", "b", "c", "c", "c"]);
  compress(["a"]);
  compress(["a", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b"]);
}
