// 105. 从前序与中序遍历序列构造二叉树
// 中等
// 1.8K
// 相关企业
// 给定两个整数数组 preorder 和 inorder ，其中 preorder 是二叉树的先序遍历， inorder 是同一棵树的中序遍历，请构造二叉树并返回其根节点。

// 示例 1:

// 输入: preorder = [3,9,20,15,7], inorder = [9,3,15,20,7]
// 输出: [3,9,20,null,null,15,7]
// 示例 2:

// 输入: preorder = [-1], inorder = [-1]
// 输出: [-1]

import '../common_class/common.dart';

TreeNode? buildTree(List<int> preorder, List<int> inorder) {
        if(preorder.length==0)return null;
        TreeNode root =TreeNode(preorder[0]);
        int Cindex = inorder.indexWhere((_)=>_==preorder[0]);
        List<int> lI = inorder.sublist(0,Cindex);
        List<int> rI = inorder.sublist(Cindex+1);
        //[3.9.20.15.7]
        //Cindx =1;
        root.left = buildTree(preorder.sublist(1,Cindex+1),lI);
        root.right = buildTree(preorder.sublist(Cindex+1),rI);
        return root;
      }
