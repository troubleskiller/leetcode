void rotate(List<int> nums, int k) {
  ///取余算法，不过感觉有点笨，深拷贝需要注意
  List<int> ans = List.from(nums);
  for (int i = 0; i < nums.length; i++) {
    print(((i + k) % (nums.length)));
    ans[((i + k) % (nums.length))] = nums[i];
  }
  for (int j = 0; j < nums.length; j++) {
    nums[j] = ans[j];
  }
}

void rotate3(List<int> nums, int k) {
  /// 数学角度，脑筋急转弯
  /// 1 2 3 4 5 6 7 =>(k = 3)  5 6 7 1 2 3 4
  /// 0 ～ k 和 k + 1 到 length - 1
  /// k + 1 到 length - 1 一定还是原有的顺序，而他们作为一个整体移到左边。\\
  k %= nums.length;

  var ans = [
    ...nums.reversed.toList().sublist(0, k).reversed.toList(),
    ...nums.reversed.toList().sublist(k, nums.length).reversed.toList()
  ];
  for (int j = 0; j < nums.length; j++) {
    nums[j] = ans[j];
  }
  print(nums);
}

void rotate2(List<int> nums, int k) {
  ///*
  ///我们从位置 0 开始，最初令 temp=nums[0]。根据规则，位置 0 的元素会放至 (0+k)modn 的位置，令 x=(0+k)modn，此时交换 temp 和 nums[x]，完成位置 x 的更新。然后，我们考察位置 x，并交换 temp 和 nums[(x+k)modn]，从而完成下一个位置的更新。不断进行上述过程，直至回到初始位置 0。
  //
  // 容易发现，当回到初始位置 0 时，有些数字可能还没有遍历到，此时我们应该从下一个数字开始重复的过程，可是这个时候怎么才算遍历结束呢？我们不妨先考虑这样一个问题：从 0 开始不断遍历，最终回到起点 0 的过程中，我们遍历了多少个元素？
  //
  // 由于最终回到了起点，故该过程恰好走了整数数量的圈，不妨设为 a 圈；再设该过程总共遍历了 b 个元素。因此，我们有 an=bk，即 an 一定为 n,k 的公倍数。又因为我们在第一次回到起点时就结束，因此 a 要尽可能小，故 an 就是 n,k 的最小公倍数 lcm(n,k)，因此 b 就为 lcm(n,k)/k。
  //
  // 这说明单次遍历会访问到 lcm(n,k)/k 个元素。为了访问到所有的元素，我们需要进行遍历的次数为
  //
  // lcm(n,k)/k
  // n
  // ​
  //  =
  // lcm(n,k)
  // nk
  // ​
  //  =gcd(n,k)
  // 其中 gcd 指的是最大公约数。
  //
  // 我们用下面的例子更具体地说明这个过程：
  //
  // nums = [1, 2, 3, 4, 5, 6]
  // k = 2
  //
  //
  // 如果读者对上面的数学推导的理解有一定困难，也可以使用另外一种方式完成代码：使用单独的变量 count 跟踪当前已经访问的元素数量，当 count=n 时，结束遍历过程。
  ///*//
  if (nums.length == 1 || k == 0) return;
  int start = 0;
  int len = nums.length;
  int tmp = nums[0];
  int x = 0;
  for (var i = 0; i < nums.length; i++) {
    start = start + k;
    if (start % len == x) {
      //当下一个点是我们开始的点时。
      ///举个例子「1，2，3」k=3,0+k=3  3%3=0  =>这时我们发现这一轮循环已经结束，直接开始下一轮
      ///即下标点为2的时刻，同时i++;因为我们直接跳过了一个数字。在我们的for循环中，我们默认每个数字走过一遍。
      start++;
      int ttmp = nums[start % len];
      nums[(start - 1) % len] = tmp;
      tmp = ttmp;
      i = i++;
      x++;
    } else {
      //简单的取余运算
      int ttmp = nums[start % len];
      nums[start % len] = tmp;
      tmp = ttmp;
    }
  }
}
