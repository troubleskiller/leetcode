List<int> twoSum(List<int> numbers, int target) {
  int i = 0;
  int j = numbers.length - 1;
  List<int> cnt = [];
  while (i < j) {
    if (numbers[i] + numbers[j] == target) {
      cnt.add(i + 1);
      cnt.add(j + 1);
      break;
    }
    if (numbers[i] + numbers[j] < target) {
      i++;
      continue;
    }
    if (numbers[i] + numbers[j] > target) {
      j--;
      continue;
    }
  }
  return cnt;
}
