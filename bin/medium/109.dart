import '../common_class/common.dart';

TreeNode? sortedListToBST(ListNode? head) {
      //链表=>数组
          if(head == null) {
            return null;
          } else if(head.next == null) {
            return  TreeNode(head.val);
          }
        ListNode? pre = head;
        ListNode? p = pre.next;
        ListNode? q = p?.next;
        //找到链表的中点p
        while(q!=null && q.next!=null){
            pre = pre?.next;
            p = pre?.next;
            q = q.next?.next;
        }
        //将中点左边的链表分开
        pre?.next = null;
        TreeNode root = TreeNode(p!.val);
        root.left = sortedListToBST(head);
        root.right = sortedListToBST(p.next);
        return root;
  }