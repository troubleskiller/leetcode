// 106. 从中序与后序遍历序列构造二叉树
// 中等
// 888
// 相关企业
// 给定两个整数数组 inorder 和 postorder ，其中 inorder 是二叉树的中序遍历， postorder 是同一棵树的后序遍历，请你构造并返回这颗 二叉树 。

 

// 示例 1:


// 输入：inorder = [9,3,15,20,7], postorder = [9,15,7,20,3]
// 输出：[3,9,20,null,null,15,7]
// 示例 2:

// 输入：inorder = [-1], postorder = [-1]
// 输出：[-1]

  import '../common_class/common.dart';

TreeNode? buildTree(List<int> inorder, List<int> postorder) {
      if(postorder.isEmpty)return null;
        TreeNode root = TreeNode(postorder[postorder.length-1]);
        int index = inorder.indexWhere((_)=>_==postorder[postorder.length-1]);
        //1
        root.left = buildTree(inorder.sublist(0,index),postorder.sublist(0,index));
        root.right = buildTree(inorder.sublist(index+1),postorder.sublist(index,postorder.length-1));
        return root;
  }