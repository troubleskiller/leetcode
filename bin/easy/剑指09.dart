// 剑指 Offer 09. 用两个栈实现队列
// 简单
// 667
// 相关企业
// 用两个栈实现一个队列。队列的声明如下，请实现它的两个函数 appendTail 和 deleteHead ，分别完成在队列尾部插入整数和在队列头部删除整数的功能。(若队列中没有元素，deleteHead 操作返回 -1 )

import 'dart:collection';

class CQueue {
  List? a;
  List? b;
  CQueue() {
    a = [];
    b = [];
  }

  void appendTail(int value) {
    a?.add(value);
  }

  int deleteHead() {
    if(b!.isNotEmpty) return b?.removeLast();
        if(a!.isEmpty) return -1;
        while(a!.isNotEmpty){
          b?.add(a?.removeLast());
        }
        return b!.removeLast();
  }
}

/**
 * Your CQueue object will be instantiated and called as such:
 * CQueue obj = CQueue();
 * obj.appendTail(value);
 * int param2 = obj.deleteHead();
 */