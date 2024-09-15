void rotate(List<List<int>> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    matrix[i] = matrix[i].reversed.toList();
  }
  print(matrix);
  int col = matrix[0].length - 1;
  int row = matrix.length - 1;
  for (int i = 0; i < matrix.length - 1; i++) {
    for (int j = 0; j < matrix[i].length - i - 1; j++) {
      int tmp = matrix[i][j];
      matrix[i][j] = matrix[col - j][row - i];
      matrix[col - j][row - i] = tmp;
    }
  }
  print(matrix);
}

void main() {
  rotate([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]);
}
