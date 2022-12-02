// 100. 相同的树
// 简单
// 933
// 相关企业
// 给你两棵二叉树的根节点 p 和 q ，编写一个函数来检验这两棵树是否相同。

// 如果两个树在结构上相同，并且节点具有相同的值，则认为它们是相同的。

 

// 示例 1：


// 输入：p = [1,2,3], q = [1,2,3]
// 输出：true


    import '../common_class/common.dart';

bool isSameTree(TreeNode? p, TreeNode? q) {
        if(p==null&&q!=null){
            return false;
        }
        if(p!=null&&q==null){
            return false;
        }
        if(p!=null&&q!=null){
            return p.val==q.val&&isSameTree(p.left,q.left)&&isSameTree(p.right,q.right);
        }
            return true;
        }