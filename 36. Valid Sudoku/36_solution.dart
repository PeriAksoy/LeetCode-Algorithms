class Solution {
  bool isValidSudoku(List<List<String>> board) {
    if (satirKontrol(board) && sutunKontrol(board) && kutuKontrol(board)) {
      return true;
    } else {
      return false;
    }
  }

  bool satirKontrol(List<List<String>> board) {
    for (int i = 0; i < 9; i++) {
      Set<String> okunan = {};

      for (int j = 0; j < 9; j++) {
        String value = board[i][j];

        if (value != ".") {
          if (okunan.contains(value)) {
            return false;
          }
          okunan.add(value);
        }
      }
    }
    return true;
  }

  bool sutunKontrol(List<List<String>> board) {
    for (int j = 0; j < 9; j++) {
      Set<String> okunan = {};
      for (int i = 0; i < 9; i++) {
        String value = board[i][j];

        if (value != ".") {
          if (okunan.contains(value)) {
            return false;
          }
          okunan.add(value);
        }
      }
    }

    return true;
  }

  bool kutuKontrol(List<List<String>> board) {
    for (int satir = 0; satir < 9; satir += 3) {
      for (int sutun = 0; sutun < 9; sutun += 3) {
        Set<String> okunan = {};

        for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
            String value = board[satir + i][sutun + j];

            if (value != ".") {
              if (okunan.contains(value)) {
                return false;
              }
              okunan.add(value);
            }
          }
        }
      }
    }

    return true;
  }
}
