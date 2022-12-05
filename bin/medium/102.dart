 
//  102. 二叉树的层序遍历
// 中等
// 1.5K
// 相关企业
// 给你二叉树的根节点 root ，返回其节点值的 层序遍历 。 （即逐层地，从左到右访问所有节点）。

 

// 示例 1：


// 输入：root = [3,9,20,null,null,15,7]
// 输出：[[3],[9,20],[15,7]]
 import '../common_class/common.dart';

List<List<int>> res =[];
  List<List<int>> levelOrder(TreeNode? root) {
     dfs(0,root);
     return res;
  }
  void dfs(int depth,TreeNode? root){
      if(root==null)return;
      else{
            if(res.length<=depth){
                List<int> tmp = [root.val];
                res.add(tmp);
            }else{
                res[depth].add(root.val);
            }
            dfs(depth+1,root.left);
            dfs(depth+1,root.right);
          }
  }