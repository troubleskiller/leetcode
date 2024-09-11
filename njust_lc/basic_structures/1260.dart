List<List<int>> shiftGrid(List<List<int>> grid, int k) {
  //列
  int m = grid.length;
  //行
  int n = grid[0].length;
  List<int> transArray = [];
  List<int> ansArray = [];
  for (int i = 0; i < grid.length; i++) {
    for (int j = 0; j < grid[0].length; j++) {
      transArray.add(grid[i][j]);
      ansArray.add(grid[i][j]);
    }
  }
  print(transArray);
  for (int i = 0; i < transArray.length; i++) {
    ansArray[(i + k) % transArray.length] = transArray[i];
  }
  for (int i = 0; i < ansArray.length; i++) {
    grid[i ~/ m][i % n] = ansArray[i];
  }
  print(ansArray);
  return grid;
}
