# LeetCode-128-longest-consecutive-sequence

> 题目链接

[LeetCode-128-longest-consecutive-sequence](https://leetcode-cn.com/problems/longest-consecutive-sequence/)

> 思路

用map记下出现的数字，然后遍历map，找出每个序列的第一个数字，然后计算长度

> 代码

```go

func longestConsecutive(nums []int) int {

    status:=make(map[int]bool)
    for _,v:=range nums {
        status[v] = true   
    }

    maxLen:=0
    for i:=range status {
        if !status[i-1] {
            curNum:=i
            len:=1
            for status[curNum+1] {
                curNum++
                len++
            }
            if len >maxLen {
                maxLen = len
            }
        }
    }
    return maxLen
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度： O(n)


> 总结

执行用时 :8 ms, 在所有 Go 提交中击败了68.47%的用户

内存消耗 :3.5 MB, 在所有 Go 提交中击败了74.02%的用户

