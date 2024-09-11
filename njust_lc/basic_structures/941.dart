bool validMountainArray(List<int> arr) {
  int max = -1;
  int index = -1;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > max) {
      max = arr[i];
      index = i;
    }
  }
  if (index == 0 || index == arr.length - 1) return false;
  for (int i = 0; i < index; i++) {
    if (!(arr[i] < arr[i + 1])) return false;
  }
  for (int i = arr.length - 1; i > index; i--) {
    if (!(arr[i] < arr[i - 1])) return false;
  }
  return true;
}
