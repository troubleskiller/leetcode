  import 'dart:math';

int maxArea(List<int> height) {
    int ans = 0;
    int left = 0;
    int right = height.length-1;
    while(left!=right){
        int leftHeight = height[left];
        int rightHeight = height[right];
        int curHeight = min(leftHeight,rightHeight);
        int curWater = curHeight*(right-left);
        ans = max(curWater,ans);
        if(leftHeight<rightHeight)left++;
        else right--;
    }
    return ans;
  }