class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        for index in stride(from: nums.count-1, through: 0, by: -1) {
            guard nums[index] == 0 else { continue }
            var curIndex = index
            
            while curIndex+1 < nums.count && nums[curIndex+1] != 0 {
                nums.swapAt(curIndex, curIndex+1)
                curIndex += 1
            }
        }
    }
}