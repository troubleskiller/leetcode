class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length < 3) return nums.length;
    int cur = nums[0];
    int curCnt = 1;
    int curIndex = 0;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] == cur) {
        curCnt++;
      }
      if (nums[i] != cur) {
        if (curCnt != 1) {
          nums[++curIndex] = cur;
        }
        curCnt = 1;
        cur = nums[i];
        nums[++curIndex] = cur;
      }
    }
    if (curCnt != 1) {
      nums[++curIndex] = cur;
    }
    return curIndex + 1;
  }
}
