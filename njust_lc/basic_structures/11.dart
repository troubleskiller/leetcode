import 'dart:math';

int maxArea(List<int> height) {
  int ans = 0;
  int i = 0, j = height.length - 1;
  while (i < j) {
    int left = height[i];
    int right = height[j];
    int multi = (j - i) * min(left, right);

    ans = max(ans, multi);
    if (left < right) {
      left++;
      continue;
    } else {
      right--;
      continue;
    }
  }
  return ans;
}
