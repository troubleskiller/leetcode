// 给定一个单链表 L 的头节点 head ，单链表 L 表示为：

// L0 → L1 → … → Ln - 1 → Ln
// 请将其重新排列后变为：

// L0 → Ln → L1 → Ln - 1 → L2 → Ln - 2 → …
// 不能只是单纯的改变节点内部的值，而是需要实际的进行节点交换。

//

// 示例 1：

// 输入：head = [1,2,3,4]
// 输出：[1,4,2,3]
// 示例 2：

// 输入：head = [1,2,3,4,5]
// 输出：[1,5,2,4,3]
//

// 提示：

// 链表的长度范围为 [1, 5 * 104]
// 1 <= node.val <= 1000

import '../common_class/common.dart';
import '../foundation/024.dart';

void reorderList(ListNode? head) {
//就是说 先前面的，然后最后一个，然后前面第二个，然后倒数第二个，以此类推。
  //快慢指针，找出中间的ListNode
  if (head == null || head.next == null) return;
  ListNode? fast = head;
  ListNode? slow = head;
  while (slow!.next != null && canH(fast!)) {
    slow = slow.next!;
    fast = fast.next!.next!;
  }
  ListNode? theOther = slow.next;
  slow.next = null;
  theOther = reverseList(theOther);
  //怎么实现两个链表合并啊？

  while (head != null && theOther != null) {
    ListNode? l1 = head.next;
    ListNode? l2 = theOther.next;
    head.next = theOther;
    theOther.next = l1;
    head = l1;
    theOther = l2;
  }
}

bool canH(ListNode fast) {
  if (fast.next == null) return false;
  if (fast.next!.next == null) return false;
  return true;
}
