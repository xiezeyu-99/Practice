#  LeetCode-剑指offer-06-cong-wei-dao-tou-da-yin-lian-biao-lcof

>题目链接

[LeetCode-剑指offer-06-cong-wei-dao-tou-da-yin-lian-biao-lcof](https://leetcode-cn.com/problems/cong-wei-dao-tou-da-yin-lian-biao-lcof/)


>思路

反正数组

>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
 func reversePrint(head *ListNode) []int {
    res:=[]int{}
    for head!=nil{
        res = append(res,head.Val)
        head = head.Next
    }
    l,r:=0,len(res)-1
    for l<r{
        res[l],res[r] = res[r],res[l]
        l++
        r--
    }
    return res
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :3.1MB, 在所有 Go 提交中击败了90.09%的用户
