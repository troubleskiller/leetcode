  import '../common_class/common.dart';

  ListNode? reverseList(ListNode? head) {
      if(head==null)return null;
      ListNode pre =ListNode(0,head);
      ListNode? cur = head;
      while(cur.next!=null){
          ListNode? tmp=cur.next;//2
          cur.next =tmp?.next;
          tmp?.next=pre.next;
          pre.next=tmp;
      }
      return pre.next;
    }