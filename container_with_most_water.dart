
class Solution {
  int maxArea(List<int> height) {
    int leftIndex = 0;
    int rightIndex = height.length - 1;
    int waterArea = 0;

    while(leftIndex<rightIndex){
        int horizontalArea = rightIndex - leftIndex;
        int verticalArea = height[leftIndex]<height[rightIndex] ? height[leftIndex] : height[rightIndex];
        int currentArea = horizontalArea * verticalArea;
        if(currentArea>waterArea){
            waterArea = currentArea;
        }

        if(height[leftIndex]<height[rightIndex]){
            leftIndex++;
        }else{
            rightIndex--;
        }
    }
    return waterArea;
  }
}
