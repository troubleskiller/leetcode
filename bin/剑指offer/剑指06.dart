  import '../common_class/common.dart';

List<int> reversePrint(ListNode? head) {
      List<int> ans =[];
      while(head!=null){
        ans.add(head.val);
        head=head.next;
      }
      return ans.reversed.toList();
  }