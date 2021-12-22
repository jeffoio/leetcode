/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var nodes = [ListNode?]()
        var current = head
        
        while current != nil {
            nodes.append(current)
            current = current!.next
        }
        
        let lastIndex = nodes.count-1
        if lastIndex % 2 == 0 {
            return nodes[lastIndex/2]
        } else {
            return nodes[(lastIndex+1)/2]
        }
    }
}