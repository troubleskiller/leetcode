//   107. 二叉树的层序遍历 II
// 中等
// 636
// 相关企业
// 给你二叉树的根节点 root ，返回其节点值 自底向上的层序遍历 。 （即按从叶子节点所在层到根节点所在的层，逐层从左向右遍历）

 

// 示例 1：


// 输入：root = [3,9,20,null,null,15,7]
// 输出：[[15,7],[9,20],[3]]
// 示例 2：

// 输入：root = [1]
// 输出：[[1]]
// 示例 3：

// 输入：root = []
// 输出：[]
  

import '../common_class/common.dart';

    List<List<int>> res =[];
  List<List<int>> levelOrderBottom(TreeNode? root) {
      dfs(0,root);
      return res;
  }
  void dfs(int depth,TreeNode? root){
      if(root==null){
          return;
      }
      if(res.length<=depth){
          List<int> tmp =[root.val];
          res.insert(0,tmp);
      }else{
          res[res.length-depth-1].add(root.val);
      }
      dfs(depth+1,root.left);
      dfs(depth+1,root.right);
  }