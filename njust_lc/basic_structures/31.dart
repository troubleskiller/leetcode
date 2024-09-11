void nextPermutation(List<int> nums) {
  if (nums.length <= 1) return;
  int i = nums.length - 2, j = nums.length - 1, k = nums.length - 1;
  for (; i >= 0 && nums[i] >= nums[j];) {
    i--;
    j--;
  }
  if (i >= 0) {
    for (; nums[i] >= nums[k];) {
      k--;
    }
    int tmp = nums[i];
    nums[i] = nums[k];
    nums[k] = tmp;
  }
  int lf = j, rg = nums.length - 1;
  while (lf < rg) {
    int tmp = nums[lf];
    nums[lf++] = nums[rg];
    nums[rg--] = tmp;
  }
}

void main() {
  nextPermutation([1, 2, 3]);
}
