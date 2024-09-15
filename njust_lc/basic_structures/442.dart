List<int> findDuplicates(List<int> nums) {
  List<int> ans = [];
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == 0) continue;
    int index = nums[i] - 1;
    if (i != index) {
      int tmp = nums[index];
      if (nums[index] == nums[i]) {
        ans.add(nums[i]);
        nums[i] = 0;
      } else {
        nums[index] = nums[i];
        nums[i--] = tmp;
      }
    }
  }
  return ans;
}
