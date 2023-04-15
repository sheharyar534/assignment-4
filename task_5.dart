void main() {
  List<String> strings = [
    "hello world",
    "helloworld",
    "world of coding",
    "world coding"
  ];

  String lcs = findLCS(strings);

  print("Longest common subsequence: $lcs");
}

String findLCS(List<String> strings) {
  if (strings.isEmpty) {
    return "";
  }

  // initialize the first row and column with zeros
  List<List<int>> lcsMatrix = List.generate(
      strings[0].length + 1, (_) => List.filled(strings.length + 1, 0));

  // fill the matrix with the LCS lengths
  for (int i = 1; i <= strings[0].length; i++) {
    for (int j = 1; j <= strings.length; j++) {
      if (strings[j - 1].contains(strings[0].substring(i - 1, i))) {
        lcsMatrix[i][j] = lcsMatrix[i - 1][j - 1] + 1;
      } else {
        lcsMatrix[i][j] = lcsMatrix[i - 1][j] > lcsMatrix[i][j - 1]
            ? lcsMatrix[i - 1][j]
            : lcsMatrix[i][j - 1];
      }
    }
  }

  // find the LCS from the matrix
  String lcs = "";
  int i = strings[0].length;
  int j = strings.length;

  while (i > 0 && j > 0) {
    if (lcsMatrix[i][j] == lcsMatrix[i - 1][j - 1] + 1) {
      lcs = strings[0][i - 1] + lcs;
      i--;
      j--;
    } else if (lcsMatrix[i - 1][j] > lcsMatrix[i][j - 1]) {
      i--;
    } else {
      j--;
    }
  }

  return lcs;
}
