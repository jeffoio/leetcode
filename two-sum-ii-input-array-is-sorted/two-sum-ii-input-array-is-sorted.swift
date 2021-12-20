class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        for (index, number) in numbers.enumerated() {
            let n = target - number
            guard let nIndex = numbers.lastIndex(of: n) else { continue }
            return [index+1, nIndex+1]
        }
        return []
    }
}