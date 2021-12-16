class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var result = nums

        for index in 0..<nums.count {
            let pos = (index + k) % nums.count
            result[pos] = nums[index]
        }
        nums = result
    }
}