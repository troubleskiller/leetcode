int removeDuplicates(List<int> nums) {
  int cur = nums[0];
  int cnt = 1;
  int curIndex = 0;
  for (int i = 1; i < nums.length; i++) {
    if (cur != nums[i]) {
      nums[++curIndex] = nums[i];
      cur = nums[i];
      cnt++;
    }
  }
  return cnt;
}
