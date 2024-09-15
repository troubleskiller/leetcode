import 'dart:math';

List<List<int>> insert(List<List<int>> intervals, List<int> newInterval) {
  List<List<int>> ans = [];
  int curIndex = -1;
  for (int i = 0; i < intervals.length; i++) {
    int leftKey = newInterval[0];
    int rightKey = newInterval[1];
    List<int> cur = intervals[i];
    int left = intervals[i][0];
    int right = intervals[i][1];

    if (leftKey > right) {
      ans.add(cur);
    } else if (rightKey < left) {
      curIndex = i;
      break;
    } else {
      newInterval[0] = min(left, leftKey);
      newInterval[1] = max(right, rightKey);
    }
  }
  ans.add(newInterval);
  ans.addAll(intervals.sublist(curIndex));
  // ans.sort((a, b) => a[0].compareTo(b[0]));
  return ans;
}

void main() {
  print(
    insert([
      [1, 2],
      [3, 5],
      [6, 7],
      [8, 10],
      [12, 16]
    ], [
      4,
      8
    ]),
  );
}
