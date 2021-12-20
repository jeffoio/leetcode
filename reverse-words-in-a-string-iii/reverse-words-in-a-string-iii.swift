class Solution {
    func reverseWords(_ s: String) -> String {
        var reversed = s.split(separator: " ").map{ String($0.reversed())}
        return reversed.joined(separator: " ")
    }
}