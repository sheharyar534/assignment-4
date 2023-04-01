void main() {
  List<int> numList = [1, 2, 3, 5, 6, 7, 8, 9, 10, 12, 13, 15, 17];
  List<int> longestSubsequence = [];
  List<int> currentSubsequence = [];

  for (int i = 0; i < numList.length; i++) {
    if (i > 0 && numList[i] == numList[i - 1] + 1) {
      currentSubsequence.add(numList[i]);
    } else {
      currentSubsequence = [numList[i]];
    }
    if (currentSubsequence.length > longestSubsequence.length) {
      longestSubsequence = currentSubsequence;
    }
  }

  print("Original List: $numList");
  print("Longest Subsequence: $longestSubsequence");
}
