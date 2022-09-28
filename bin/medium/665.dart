// 665. 非递减数列
// 给你一个长度为 n 的整数数组 nums ，请你判断在 最多 改变 1 个元素的情况下，该数组能否变成一个非递减数列。

// 我们是这样定义一个非递减数列的： 对于数组中任意的 i (0 <= i <= n-2)，总满足 nums[i] <= nums[i + 1]。

// 示例 1:

// 输入: nums = [4,2,3]
// 输出: true
// 解释: 你可以通过把第一个 4 变成 1 来使得它成为一个非递减数列。
// 示例 2:

// 输入: nums = [4,2,1]
// 输出: false
// 解释: 你不能在只改变一个元素的情况下将其变为非递减数列。

//[1,7,2,5,5]

bool checkPossibility(List<int> nums) {
  int cnt = 0;
  if (nums.length == 1) return true;
  if (nums[0] > nums[1]) {
    nums[0] = nums[1];
    cnt++;
  }

  ///只考虑，是把前面的变小，还是把后面的变大。
  for (int i = 1; i < nums.length - 1; i++) {
    if (nums[i] > nums[i + 1]) {
      //1，4，3 => 4变小
      if (nums[i + 1] >= nums[i - 1]) {
        nums[i] = nums[i - 1];
      } else {
        //3，4，1 => 1变大
        nums[i + 1] = nums[i];
      }
      cnt++;
    }
    if (cnt > 1) {
      return false;
    }
  }

  return true;
}
