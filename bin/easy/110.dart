  import '../common_class/common.dart';
  import 'dart:math'as math;


//
// 110. 平衡二叉树
// 简单
// 1.2K
// 相关企业
// 给定一个二叉树，判断它是否是高度平衡的二叉树。

// 本题中，一棵高度平衡二叉树定义为：

// 一个二叉树每个节点 的左右两个子树的高度差的绝对值不超过 1 。

 

// 示例 1：


// 输入：root = [3,9,20,null,null,15,7]
// 输出：true
// 示例 2：


// 输入：root = [1,2,2,3,3,null,null,4,4]
// 输出：false
// 示例 3：

// 输入：root = []
// 输出：true
bool isBalanced(TreeNode? root) {
      if(root == null) return true;
      return (dfs(root.left)-dfs(root.right)).abs()<=1&&isBalanced(root.left)&&isBalanced(root.right);
  }
  int dfs(TreeNode? root){
      if(root == null)return 0;
      return math.max(dfs(root.left),dfs(root.right))+1;
  }
  