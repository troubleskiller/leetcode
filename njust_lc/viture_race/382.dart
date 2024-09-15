// 3019. 按键变更的次数 显示英文描述
// 题目难度Easy
// 给你一个下标从 0 开始的字符串 s ，该字符串由用户输入。按键变更的定义是：使用与上次使用的按键不同的键。例如 s = "ab" 表示按键变更一次，而 s = "bBBb" 不存在按键变更。
//
// 返回用户输入过程中按键变更的次数。
//
// 注意：shift 或 caps lock 等修饰键不计入按键变更，也就是说，如果用户先输入字母 'a' 然后输入字母 'A' ，不算作按键变更。
//
//
//
// 示例 1：
//
// 输入：s = "aAbBcC"
// 输出：2
// 解释：
// 从 s[0] = 'a' 到 s[1] = 'A'，不存在按键变更，因为不计入 caps lock 或 shift 。
// 从 s[1] = 'A' 到 s[2] = 'b'，按键变更。
// 从 s[2] = 'b' 到 s[3] = 'B'，不存在按键变更，因为不计入 caps lock 或 shift 。
// 从 s[3] = 'B' 到 s[4] = 'c'，按键变更。
// 从 s[4] = 'c' 到 s[5] = 'C'，不存在按键变更，因为不计入 caps lock 或 shift 。
// 示例 2：
//
// 输入：s = "AaAaAaaA"
// 输出：0
// 解释： 不存在按键变更，因为这个过程中只按下字母 'a' 和 'A' ，不需要进行按键变更。

import 'dart:math';

int countKeyChanges(String s) {
  if (s.length == 1) return 0;
  int cnt = 0;
  for (int i = 1; i < s.length - 1; i++) {
    if (s[i].toUpperCase() != s[i - 1].toUpperCase()) {
      cnt++;
    }
  }
  return cnt;
}

// 3020. 子集中元素的最大数量 显示英文描述

// 题目难度Medium
// 给你一个 正整数 数组 nums 。
//
// 你需要从数组中选出一个满足下述条件的子集：
//
// 你可以将选中的元素放置在一个下标从 0 开始的数组中，并使其遵循以下模式：[x, x2, x4, ..., xk/2, xk, xk/2, ..., x4, x2, x]（注意，k 可以是任何 非负 的 2 的幂）。例如，[2, 4, 16, 4, 2] 和 [3, 9, 3] 都符合这一模式，而 [2, 4, 8, 4, 2] 则不符合。
// 返回满足这些条件的子集中，元素数量的 最大值 。
//
//
//
// 示例 1：
//
// 输入：nums = [5,4,1,2,2]
// 输出：3
// 解释：选择子集 {4,2,2} ，将其放在数组 [2,4,2] 中，它遵循该模式，且 22 == 4 。因此答案是 3 。
// 示例 2：
//
// 输入：nums = [1,3,2,4]
// 输出：1
// 解释：选择子集 {1}，将其放在数组 [1] 中，它遵循该模式。因此答案是 1 。注意我们也可以选择子集 {2} 、{4} 或 {3} ，可能存在多个子集都能得到相同的答案。
//
//
// 提示：
//
// 2 <= nums.length <= 105
// 1 <= nums[i] <= 109
int maximumLength(List<int> nums) {
  int ans = 1;
  Map testM = Map.fromIterable(nums,
      key: (item) => item,
      value: (item) =>
          nums.where((element) => element == item).toList().length);
  nums.sort();
  List keys = testM.keys.toList();
  keys.sort();
  List singleVs = testM.keys.where((element) => testM[element] == 1).toList();
  singleVs.sort();
  for (int i = 0; i < singleVs.length; i++) {
    ans = max(1 + contains(singleVs[i], testM, 2, 0.5), ans);
  }
  print(ans);
  return ans;
}

int contains(int num, Map map, double pow1, double pow2) {
  if (
      // map.containsKey(pow(num, pow1)) &&
      map.containsKey(pow(num, pow2)) &&
          // map[pow(num, pow1)]! > 1 &&
          map[pow(num, pow2)]! > 1) {
    return 2 + contains(num, map, pow1 * 2, pow2 / 2);
  }
  return 0;
}

void main() {
  countKeyChanges('s');
  maximumLength([5, 4, 1, 2, 2]);
}
