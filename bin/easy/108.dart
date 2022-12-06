// 108. 将有序数组转换为二叉搜索树
// 简单
// 1.2K
// 相关企业
// 给你一个整数数组 nums ，其中元素已经按 升序 排列，请你将其转换为一棵 高度平衡 二叉搜索树。

// 高度平衡 二叉树是一棵满足「每个节点的左右两个子树的高度差的绝对值不超过 1 」的二叉树。

// 示例 1：

// 输入：nums = [-10,-3,0,5,9]
// 输出：[0,-3,9,-10,null,5]
// 解释：[0,-10,5,null,-3,null,9] 也将被视为正确答案：

// 示例 2：

// 输入：nums = [1,3]
// 输出：[3,1]
// 解释：[1,null,3] 和 [3,1] 都是高度平衡二叉搜索树。

import '../common_class/common.dart';

TreeNode? sortedArrayToBST(List<int> nums) {
  int length = nums.length;
  if (length == 0) return null;
  if (length == 1) return TreeNode(nums[0]);
  int center = nums[(length / 2).truncate()];
  TreeNode root = TreeNode(center);
  root.left = sortedArrayToBST(nums.sublist(0, (length / 2).truncate()));
  root.right = sortedArrayToBST(nums.sublist((length / 2).truncate() + 1));
  return root;
}
