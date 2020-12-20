#  LeetCode-275-h-index-ii

>题目链接

[LeetCode-275-h-index-ii](https://leetcode-cn.com/problems/h-index-ii/)

>思路

倒序遍历，当引用数小于当前遍历的书本数时停止遍历

>代码

```go

func hIndex(citations []int) int {
    if len(citations) == 0 {
        return 0
    }
    res := len(citations)
    for i := len(citations) - 1; i >= 0; i-- {
        if citations[i] < len(citations)-i {
            res = len(citations)-i-1
            break
        }
    }

    return res
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(1)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :6.6MB, 在所有 Go 提交中击败了68.18%的用户
