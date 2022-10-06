// 189. 轮转数组
// 给你一个数组，将数组中的元素向右轮转 k 个位置，其中 k 是非负数。

// 示例 1:

// 输入: nums = [1,2,3,4,5,6,7], k = 3
// 输出: [5,6,7,1,2,3,4]
// 解释:
// 向右轮转 1 步: [7,1,2,3,4,5,6]
// 向右轮转 2 步: [6,7,1,2,3,4,5]
// 向右轮转 3 步: [5,6,7,1,2,3,4]
// 示例 2:

// 输入：nums = [-1,-100,3,99], k = 2
// 输出：[3,99,-1,-100]
// 解释:
// 向右轮转 1 步: [99,-1,-100,3]
// 向右轮转 2 步: [3,99,-1,-100]

// 提示：

// 1 <= nums.length <= 105
// -231 <= nums[i] <= 231 - 1
// 0 <= k <= 105

//轮转数组也就是每个数字往后移动k个位置。
//第一时间就想到取余
void rotate(List<int> nums, int k) {
  if (nums.length == 1 || k == 0) return;
  int start = 0;
  int len = nums.length;
  int tmp = nums[0];
  int x = 0;
  for (var i = 0; i < nums.length; i++) {
    start = start + k;
    if (start % len == x) {
      //当下一个点是我们开始的点时。
      ///举个例子「1，2，3」k=3,0+k=3  3%3=0  =>这时我们发现这一轮循环已经结束，直接开始下一轮
      ///即下标点为2的时刻，同时i++;因为我们直接跳过了一个数字。在我们的for循环中，我们默认每个数字走过一遍。
      start++;
      int ttmp = nums[start % len];
      nums[(start - 1) % len] = tmp;
      tmp = ttmp;
      i = i++;
      x++;
    } else {
      //简单的取余运算
      int ttmp = nums[start % len];
      nums[start % len] = tmp;
      tmp = ttmp;
    }
  }
}
