// 419. 甲板上的战舰
// 给你一个大小为 m x n 的矩阵 board 表示甲板，其中，每个单元格可以是一艘战舰 'X' 或者是一个空位 '.' ，返回在甲板 board 上放置的 战舰 的数量。

// 战舰 只能水平或者垂直放置在 board 上。换句话说，战舰只能按 1 x k（1 行，k 列）或 k x 1（k 行，1 列）的形状建造，其中 k 可以是任意大小。两艘战舰之间至少有一个水平或垂直的空位分隔 （即没有相邻的战舰）。

// 示例 1：

// 输入：board = [["X",".",".","X"],[".",".",".","X"],[".",".",".","X"]]
// 输出：2
// 示例 2：

// 输入：board = [["."]]
// 输出：0

int countBattleships(List<List<String>> board) {
  int cnt = 0;
  for (var i = 0; i < board.length; i++) {
    for (var j = 0; j < board[0].length; j++) {
      if (board[i][j] == '.') continue;
      if (i > 0 && board[i - 1][j] == 'X') continue;
      if (j > 0 && board[i][j - 1] == 'X') continue;
      cnt++;
    }
  }
  return cnt;
}
