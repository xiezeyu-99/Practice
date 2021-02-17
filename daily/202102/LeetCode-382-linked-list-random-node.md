#  LeetCode-382-linked-list-random-node

>题目链接

[LeetCode-382-linked-list-random-node](https://leetcode-cn.com/problems/linked-list-random-node/)

>思路

蓄水池算法

>代码

```go

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
type Solution struct {
    head *ListNode
    r    *rand.Rand
}

/** @param head The linked list's head.
  Note that the head is guaranteed to be not null, so it contains at least one node. */
func Constructor(head *ListNode) Solution {
    return Solution{
        head: head,
        r:    rand.New(rand.NewSource(time.Now().Unix())),
    }
}

/** Returns a random node's value. */
func (this *Solution) GetRandom() int {
    node := this.head
    count := 1
    var res int
    for node != nil {
        if this.r.Intn(count) == 0 {
            res = node.Val
        }
        count++
        node = node.Next
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了84.47%的用户
 
内存消耗 :7.5MB, 在所有 Go 提交中击败了27.18%的用户
