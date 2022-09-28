// 给定单链表的头节点 head ，请反转链表，并返回反转后的链表的头节点。

import '../common_class/common.dart';

///反转链表
///最重要的（在链表相关的操作中是最基础也是最需要掌握的，和第一次相比已经比较熟练，但仍然需要再练熟悉。）
ListNode? reverseList(ListNode? head) {
  ///只需要排除头节点为空的情况。
  if (head == null) return head;
  //这里定义两个分别为 pre 和 cur；
  //变化行程应该是：「假设链表为 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7」
  //**                 pre cur
  //经过第一次变化           pre  cur
  //注意：tmp只用于保存cur.next，防止丢失节点。
  // */
  ListNode? pre;
  ListNode? cur = head;
  while (cur != null) {
    ListNode? tmp = cur.next;
    cur.next = pre;
    pre = cur;
    cur = tmp;
  }
  return pre;
}
