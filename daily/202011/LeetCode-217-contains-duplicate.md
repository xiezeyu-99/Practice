#  LeetCode-217-contains-duplicate

>题目链接

[LeetCode-217-contains-duplicate](https://leetcode-cn.com/problems/contains-duplicate/)

>思路

用map标记数量

>代码

```go

func containsDuplicate(nums []int) bool {
    count:=make(map[int]int)

    for _,v:=range nums{
        count[v]++
        if count[v] > 1 {
            return true
        }
    }
    return false
}
  

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :20ms, 在所有 Go 提交中击败了94.32%的用户
 
内存消耗 :7.7MB, 在所有 Go 提交中击败了40.27%的用户
