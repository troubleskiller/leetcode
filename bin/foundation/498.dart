// 498. 对角线遍历
// 给你一个大小为 m x n 的矩阵 mat ，请以对角线遍历的顺序，用一个数组返回这个矩阵中的所有元素。

// 示例 1：

// 输入：mat = [[1,2,3],
//             [4,5,6],
//             [7,8,9]]
//      [1,2,3,4,5,6,7,8,9]
//      [1,2,4,3]
// 输出：[1,2,4,7,5,3,6,8,9]
// 示例 2：

// 输入：mat = [[1,2],[3,4]]
// 输出：[1,2,3,4]

// 提示：

// m == mat.length
// n == mat[i].length
// 1 <= m, n <= 104
// 1 <= m * n <= 104
// -105 <= mat[i][j] <= 105
List<int> findDiagonalOrder(List<List<int>> matrix) {
  int r = 0, c = 0;
  int row = matrix.length, col = matrix[0].length;
  List<int> res = List.filled(row * col, 1);
  for (int i = 0; i < res.length; i++) {
    res[i] = matrix[r][c];
    // r + c 即为遍历的层数，偶数向上遍历，奇数向下遍历
    if ((r + c) % 2 == 0) {
      if (c == col - 1) {
        // 往下移动一格准备向下遍历
        r++;
      } else if (r == 0) {
        // 往右移动一格准备向下遍历
        c++;
      } else {
        // 往上移动
        r--;
        c++;
      }
    } else {
      if (r == row - 1) {
        // 往右移动一格准备向上遍历
        c++;
      } else if (c == 0) {
        // 往下移动一格准备向上遍历
        r++;
      } else {
        // 往下移动
        r++;
        c--;
      }
    }
  }
  return res;
}
