import 'dart:math';

List<List<int>> merge(List<List<int>> intervals) {
  intervals.sort((a, b) => a[1].compareTo(b[0]));
  for (int i = 1; i < intervals.length; i++) {
    if (intervals[i - 1][1] > intervals[i][0]) {
      intervals[i - 1][1] = max(intervals[i - 1][1], intervals[i][1]);
      intervals.removeAt(i--);
    }
  }
  return intervals;
}
