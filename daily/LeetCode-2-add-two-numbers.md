# LeetCode-2-add-two-numbers

> 题目链接

[LeetCode-2-add-two-numbers](https://leetcode-cn.com/problems/add-two-numbers/)

> 思路

遍历链表，相加的个位数放在当前节点，记录进位，在计算下一位时叠加


> 代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func addTwoNumbers(l1 *ListNode, l2 *ListNode) *ListNode {
    result:=&ListNode{
        Val:0,
    }

    node:= result
    carry:=0
    for l1!=nil||l2!=nil || carry>0{
        node.Next = new(ListNode)
        node = node.Next
        if l1!=nil{
            carry+=l1.Val
            l1 = l1.Next
        }  
        
        if l2!=nil {
            carry+=l2.Val
            l2 = l2.Next
        } 
        
        node.Val = carry%10
        carry = carry/10
      
    }
    return result.Next

}


```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

> 总结

执行用时 :8 ms, 在所有 Go 提交中击败了93.43%的用户

内存消耗 :5 MB, 在所有 Go 提交中击败了58.62%的用户

