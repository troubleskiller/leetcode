void sortColors(List<int> nums) {
  int blue = nums.length - 1;
  List<int> lastWhiteIndex = [];
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == 0) {
      if (lastWhiteIndex.isNotEmpty) {
        nums[i] = nums[lastWhiteIndex[0]];
        nums[lastWhiteIndex[0]] = 0;
        if (lastWhiteIndex.length != 1) {
          lastWhiteIndex.removeAt(0);
          lastWhiteIndex.add(i);
        } else {
          lastWhiteIndex[0] = i;
        }
      }
      continue;
    }
    if (nums[i] == 1) {
      lastWhiteIndex.add(i);
    }
    if (i - 1 == blue) break;
    if (nums[i] == 2) {
      int tmp = nums[blue];
      nums[blue--] = 2;
      nums[i--] = tmp;
    }
  }
}

void main() {
  sortColors([2, 0, 2, 1, 1, 0]);
  sortColors([2, 0, 1]);
}
