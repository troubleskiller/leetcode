import 'dart:math';

int trap(List<int> height) {
  int ans = 0;
  List<int> dps = List.filled(height.length, -1);
  List<int> dps2 = List.filled(height.length, -1);
  int curLeft = 0;
  int curRight = 0;
  for (int i = 0; i < height.length; i++) {
    if (curLeft == 0) {
      dps[i] = 0;
    } else {
      dps[i] = curLeft - height[i];
    }
    curLeft = max(height[i], curLeft);
  }
  for (int i = height.length - 1; i >= 0; i--) {
    if (curRight == 0) {
      dps2[i] = 0;
    } else {
      dps2[i] = curRight - height[i];
    }
    curRight = max(height[i], curRight);
  }
  print(dps);
  print(dps2);

  for (int i = 0; i < dps.length; i++) {
    if (dps[i] >= 0 && dps2[i] >= 0) {
      ans = ans + min(dps[i], dps2[i]);
    }
  }
  // for (var element in dps2) {
  //   ans = ans + (element > 0 ? element : 0);
  // }
  print(ans);
  return ans;
}

void main() {
  trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]);
}
