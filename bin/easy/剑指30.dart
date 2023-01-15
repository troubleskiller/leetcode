// 剑指 Offer 30. 包含min函数的栈
// 简单
// 431
// 相关企业
// 定义栈的数据结构，请在该类型中实现一个能够得到栈的最小元素的 min 函数在该栈中，调用 min、push 及 pop 的时间复杂度都是 O(1)。

import 'dart:math' as math;

class MinStack {
  int? minNum;
  List? ans;
  /** initialize your data structure here. */
  MinStack() {
    ans = [];
  }

  void push(int x) {
    ans?.add(minNum);
    minNum = x < minNum! ? x : minNum;
    ans?.add(x);
  }

  void pop() {
    ans!.removeLast();
    minNum = ans!.last;
    ans!.removeLast();
    if (ans?.length == 0) {
      minNum = null;
    }
  }

  int top() {
    return ans?.last;
  }

  int min() {
    return minNum!;
  }
}
/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack obj = MinStack();
 * obj.push(x);
 * obj.pop();
 * int param3 = obj.top();
 * int param4 = obj.min();
 */