// 54. 螺旋矩阵
// 给你一个 m 行 n 列的矩阵 matrix ，请按照 顺时针螺旋顺序 ，返回矩阵中的所有元素。

// 示例 1：

// 输入：matrix = [[1,2,3],[4,5,6],[7,8,9]]
// 输出：[1,2,3,6,9,8,7,4,5]
// 示例 2：

// 输入：matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
// 输出：[1,2,3,4,8,12,11,10,9,5,6,7]

// 提示：

// m == matrix.length
// n == matrix[i].length
// 1 <= m, n <= 10
// -100 <= matrix[i][j] <= 100

List<int> spiralOrder(List<List<int>> matrix) {
  List<int> res = [];
  int m = matrix.length;
  int n = matrix[0].length;
  int top = 0;
  int left = 0;
  int right = n - 1;
  int down = m - 1;
  while (true) {
    for (var i = left; i <= right; i++) {
      res.add(matrix[top][i]);
    }
    if (top++ > down) break;
    for (var i = top; i <= down; i++) {
      res.add(matrix[i][right]);
    }
    if (right-- < left) break;
    for (var i = right; i >= left; i--) {
      res.add(matrix[down][i]);
    }
    if (down-- < top) break;
    for (var i = down; i >= top; i--) {
      res.add(matrix[i][left]);
    }
    if (left++ > right) break;
  }
  return res;
}
