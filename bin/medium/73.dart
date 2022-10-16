// 给定一个 m x n 的矩阵，如果一个元素为 0 ，则将其所在行和列的所有元素都设为 0 。请使用 原地 算法。

//

// 示例 1：

// 输入：matrix = [[1,1,1],[1,0,1],[1,1,1]]
// 输出：[[1,0,1],[0,0,0],[1,0,1]]
// 示例 2：

// 输入：matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
// 输出：[[0,0,0,0],[0,4,5,0],[0,3,1,0]]

// 来源：力扣（LeetCode）
// 链接：https://leetcode.cn/problems/set-matrix-zeroes
// 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
void setZeroes(List<List<int>> matrix) {
  List<int> rowList = [];
  List<int> colList = [];
  for (var i = 0; i < matrix.length; i++) {
    for (var j = 0; j < matrix[0].length; j++) {
      if (matrix[i][j] == 0) {
        if (!rowList.contains(j)) {
          rowList.add(j);
        }
        if (!colList.contains(i)) {
          colList.add(i);
        }
      }
    }
  }
  for (var element in rowList) {
    for (var i = 0; i < matrix.length; i++) {
      matrix[i][element] = 0;
    }
  }
  for (var element in colList) {
    for (var i = 0; i < matrix[0].length; i++) {
      matrix[element][i] = 0;
    }
  }
}
