#  LeetCode-274-h-index

>题目链接

[LeetCode-274-h-index](https://leetcode-cn.com/problems/h-index/)

>  思路

先排序，然后倒序遍历，当引用数小于当前遍历的书本数时停止遍历

>代码

```go

func hIndex(citations []int) int {
    if len(citations) == 0 {
        return 0
    }
    // 从大到小倒序排序
    sort.Ints(citations)
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
> 总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.2MB, 在所有 Go 提交中击败了62.99%的用户
