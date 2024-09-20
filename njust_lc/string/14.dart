String longestCommonPrefix(List<String> strs) {
  String ans = '';
  if (strs[0].isEmpty) {
    return ans;
  }
  for (int i = 0; i < strs[0].length; i++) {
    String tmp = strs[0][i];
    print('1');
    for (int j = 0; j < strs.length; j++) {
      print('2');
      if (strs[j].length < i + 1 || strs[j][i] != tmp) {
        print('1$ans');
        return ans;
      }
    }
    ans += tmp;
  }
  return ans;
}

void main() {
  // longestCommonPrefix(["flower", "flow", "flight"]);
  // longestCommonPrefix(["d", "racecar", "car"]);
  // longestCommonPrefix(["", "racecar", "car"]);
  longestCommonPrefix([
    "a",
  ]);
}
