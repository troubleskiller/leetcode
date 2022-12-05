// 103. 二叉树的锯齿形层序遍历
// 中等
// 717
// 相关企业
// 给你二叉树的根节点 root ，返回其节点值的 锯齿形层序遍历 。（即先从左往右，再从右往左进行下一层遍历，以此类推，层与层之间交替进行）。

 

// 示例 1：


// 输入：root = [3,9,20,null,null,15,7]
// 输出：[[3],[20,9],[15,7]]

  import 'dart:collection';

import '../common_class/common.dart';

   List<List<int>> zigzagLevelOrder(TreeNode? root) {
  List<List<int>> res = [];
  Queue<TreeNode> que = DoubleLinkedQueue();
  if (root == null) {
    return res;
  } else {
    que.add(root);
  }
  int cnt = 0;
  int flag = 1; //正序
  while (que.isNotEmpty) {
    cnt = que.length;
    List<int> list = [];
    //int k = 0;
    while (cnt != 0) {
      if (flag == 1) { //奇数层节点从队尾出队，孩子结点按序从队首入队
        root = que.removeLast();
        if (root.left != null) que.addFirst(root.left!);
        if (root.right != null) que.addFirst(root.right!);
      } else { //偶数层节点从队首出队，孩子结点逆序(先有后左)从队尾入队
        root = que.removeFirst();
        if (root.right != null) que.addLast(root.right!);
        if (root.left != null) que.addLast(root.left!);
      }
      list.add(root.val);
      cnt--;
    }
    flag = 1-flag;
    res.add(list);
  }
  return res;
  }
  }
     