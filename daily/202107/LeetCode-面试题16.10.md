# LeetCode-面试题16.10

>题目链接

[LeetCode-面试题16.10](https://leetcode-cn.com/problems/living-people-lcci/)

> 思路


>代码

```go


func maxAliveYear(birth []int, death []int) int {
    cnt := make([]int, 102)

    for i := range birth {
        b := birth[i]
        d := death[i]
        cnt[b-1900] += 1   // 差分数组左端点+1
        cnt[d-1900+1] -= 1 // 差分数组右端点右一位 -1
    }

    max, sum, idx := 0, 0, 0
    for i := 0; i <= 100; i++ {
        sum += cnt[i]
        if sum > max {
            max = sum
            idx = i
        }
    }
    return idx + 1900

}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
