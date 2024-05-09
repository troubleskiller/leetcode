  List<int> twoSum(List<int> nums, int target) {
        //    List<int> ans=[];
        // for(int i =0;i<nums.length;i++){
        //     for(int j = i+1; j < nums.length;j++){
        //         if(nums[i]+nums[j]==target){
        //             ans.add(nums[i]);
        //             ans.add(nums[j]);
        //             return ans;
        //         }
        //     }
        // }
        // return ans;
    List<int> ans = [];
    Map<int,int> hashTable ={};
    for(int i =0;i<nums.length;i++){
        if(hashTable.containsKey(target-nums[i])){
            ans.add(i);
            int key = target-nums[i];
            ans.add(hashTable[key]!);
            return ans;
        }
        hashTable.putIfAbsent(nums[i], () => i);
    }
    return ans;
  }