import 'dart:math';

int myAtoi(String s) {
  if (s.isEmpty) return 0;
  int ratio = 0;
  int ans = 0;
  bool isPlus = true;

  List<String> numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  List<String> numbers2 = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  for (int i = 0; i < s.length; i++) {
    if (s[i] == ' ') {
      if (s.length == i + 1) return 0;
      s = s.substring(i + 1);
      i--;
    } else {
      break;
    }
  }

  if (['+', '-'].contains(s[0])) {
    if (s[0] == '-') {
      isPlus = false;
    }
    s = s.substring(1);
    for (int i = 0; i < s.length; i++) {
      if (!numbers.contains(s[i])) {
        s = s.substring(0, i + 1);
      }
    }
  } else if (numbers.contains(s[0])) {
    for (int i = 0; i < s.length; i++) {
      if (![...numbers, ' '].contains(s[i])) {
        s = s.substring(0, i + 1);
      }
    }
  } else {
    return 0;
  }
  for (int i = s.length - 1; i >= 0; i--) {
    if (numbers2.contains(s[i])) {
      if (i == 0) {
        if (ratio > 25) {
          if (!isPlus) return -pow(2, 31).toInt();
          if (isPlus) return pow(2, 31).toInt() - 1;
        }
      }
      ans += int.parse(s[i]) * (pow(10, ratio).toInt());
      ratio++;
    } else if (s[i] == '0') {
      ratio++;
      continue;
    } else {
      ans = 0;
      ratio = 0;
    }
    if (ans > pow(2, 31)) {
      if (!isPlus) return -pow(2, 31).toInt();
      if (isPlus) return pow(2, 31).toInt() - 1;
    }
  }
  if (isPlus) {
    ans = ans;
  } else {
    ans = -ans;
    if (ans < -pow(2, 31)) ans = -pow(2, 31).toInt();
  }
  if (ans > pow(2, 31) - 1) return pow(2, 31).toInt() - 1;
  return ans;
}

void main() {
  print(myAtoi("-91283472332"));
  // print(myAtoi("42"));
  print(myAtoi("   -042"));
  print(myAtoi(
      "10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000522545459"));

  print(myAtoi("  +b12102370352"));
}
