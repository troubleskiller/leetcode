// 118. 杨辉三角
// 给定一个非负整数 numRows，生成「杨辉三角」的前 numRows 行。

// 在「杨辉三角」中，每个数是它左上方和右上方的数的和。

// 示例 1:

// 输入: numRows = 5
// 输出: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
// 示例 2:

// 输入: numRows = 1
// 输出: [[1]]
List<List<int>> generate(int numRows) {
  List<List<int>> res = [];
  if (numRows == 1) {
    return [
      [1]
    ];
  }
  res.add([1]);
  res.add([1, 1]);
  for (int i = 2; i < numRows; i++) {
    List<int> tmp = List.filled(i + 1, 0);
    tmp[0] = 1;
    tmp[i] = 1;
    for (int j = 1; j < i; j++) {
      tmp[j] = res[i - 1][j - 1] + res[i - 1][j];
    }
    res.add(tmp);
  }
  return res;
}
