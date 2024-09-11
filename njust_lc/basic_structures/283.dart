void moveZeroes(List<int> nums) {
  int znt = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == 0) {
      znt++;
      continue;
    }
    nums[i - znt] = nums[i];
  }
  for (int i = nums.length - 1; i >= nums.length - znt; i--) {
    nums[i] = 0;
  }
}
