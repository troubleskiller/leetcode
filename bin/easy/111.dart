//  111. 二叉树的最小深度
// 简单
// 890
// 相关企业
// 给定一个二叉树，找出其最小深度。

// 最小深度是从根节点到最近叶子节点的最短路径上的节点数量。

// 说明：叶子节点是指没有子节点的节点。

 

// 示例 1：


// 输入：root = [3,9,20,null,null,15,7]
// 输出：2
   import 'dart:math'as math;
 
  import '../common_class/common.dart';

int minDepth(TreeNode? root) {
      if(root ==null){
          return 0;
      }
      if(root.left ==null&&root.right==null)return 1;
      if(root.left == null){
          return minDepth(root.right)+1;
      }
            if(root.right == null){
          return minDepth(root.left)+1;
      }
      return math.min(minDepth(root.left),minDepth(root.right))+1;
  }