//  101. 对称二叉树
// 简单
// 2.2K
// 相关企业
// 给你一个二叉树的根节点 root ， 检查它是否轴对称。

 

// 示例 1：


// 输入：root = [1,2,2,3,4,4,3]
// 输出：true
 
  import '../common_class/common.dart';

bool isSymmetric(TreeNode? root) {
      if(root!=null){
          return isSame(root.left,root.right);
      }
      return true;
  }
  bool isSame(TreeNode? left,TreeNode? right){
      if(left ==null&&right !=null){
          return false;
      }
      if(left !=null&&right == null){
          return false;
      }
      if(left !=null&&right != null){
          return left.val==right.val&&isSame(left.left,right.right)&&isSame(left.right,right.left);
      }
      return true;
  }