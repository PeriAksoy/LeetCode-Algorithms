class Solution {
  List<int> searchRange(List<int> nums, int target) {
    List<int> dizi=[];
    int kontrol_ilk=1;
    int yok=0;

    for(int i=0;i<nums.length;i++){
        if(nums[i]==target && kontrol_ilk==1){
            dizi.insert(0,i); 
            kontrol_ilk=0;
            yok=1;
        if(nums.length==1){
            dizi.insert(1,0);
        }
        }
        if(i + 1 < nums.length && nums[i] == target && nums[i + 1] != target){
            dizi.insert(1,i); 
            yok=1;
        }
    }
    if(yok==0){
        dizi.insert(0,-1); 
        dizi.insert(1,-1); 
    }
    return dizi;
  }
}