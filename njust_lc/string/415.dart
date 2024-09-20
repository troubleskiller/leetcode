String addStrings(String num1, String num2) {
  String ans = '';
  int cur1Index = num1.length - 1;
  int cur2Index = num2.length - 1;
  int tmp = 0;
  while (cur1Index >= 0 || cur2Index >= 0) {
    late int curNum;
    if (cur1Index < 0 || cur2Index < 0) {
      int cur =
          int.parse(cur1Index < 0 ? num2[cur2Index--] : num1[cur1Index--]);
      curNum = cur + tmp;
    } else {
      int n1 = int.parse(num1[cur1Index--]);
      int n2 = int.parse(num2[cur2Index--]);
      curNum = n1 + n2 + tmp;
    }
    if (curNum > 9) {
      curNum = curNum - 10;
      tmp = 1;
    } else {
      tmp = 0;
    }
    ans = '$curNum$ans';
  }
  if (tmp != 0) {
    ans = '$tmp$ans';
  }

  print(ans);
  return ans;
}

void main() {
  addStrings('1', '9');
}
