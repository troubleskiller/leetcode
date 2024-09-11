import 'dart:math';

int longestConsecutive(List<int> nums) {
  Set<int> a = nums.toSet();
  List<int> simpleList = a.toList();
  simpleList.removeLast();
  int longest = 1;
  int curLength = 1;
  for (int i = 0; i < simpleList.length; i++) {
    if (a.contains(simpleList[i] - 1)) {
      continue;
    } else {
      while (a.contains(simpleList[i] + 1)) {
        curLength += 1;
      }
      longest = max(longest, curLength);
    }
  }
  return longest;
}
