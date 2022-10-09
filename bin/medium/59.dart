// 59. 螺旋矩阵 II
// 给你一个正整数 n ，生成一个包含 1 到 n2 所有元素，且元素按顺时针顺序螺旋排列的 n x n 正方形矩阵 matrix 。

// 示例 1：

// 输入：n = 3
// 输出：[[1,2,3],[8,9,4],[7,6,5]]
// 示例 2：

// 输入：n = 1
// 输出：[[1]]

List<List<int>> generateMatrix(int n) {
  // [[1, 2, 3, 4]
  //  [0, 11, 12, 5],
  //  [0, 14, 13, 6],
  //  [10, 9, 8, 7]]；
  int index = 0;
  List<List<int>> res = [];
  for (var i = 0; i < n; i++) {
    res.add(List.filled(n, 0));
  }
  int l = 0;
  int r = n - 1;
  int t = 0;
  int b = n - 1;
  while (true) {
    for (var i = l; i <= r; i++) {
      res[t][i] = ++index;
    }
    if (t++ > b) break;
    for (var i = t; i <= b; i++) {
      res[i][r] = ++index;
    }
    if (r-- < l) break;
    for (var i = r; i >= l; i--) {
      res[b][i] = ++index;
    }
    if (b-- < t) break;
    for (var i = b; i >= t; i--) {
      res[i][l] = ++index;
    }
    if (l++ > r) break;
  }
  return res;
}
