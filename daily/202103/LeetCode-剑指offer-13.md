#  LeetCode-剑指offer-13

>题目链接

[LeetCode-剑指offer-13](https://leetcode-cn.com/problems/ji-qi-ren-de-yun-dong-fan-wei-lcof/)

>思路

dfs

>代码

```go

var record [][]bool
var count int
func movingCount(m int, n int, k int) int {
    count = 0
    record = make([][]bool, m)
    for i := 0; i < m; i++ {
        record[i] = make([]bool, n)
    }
    find(m, n, k, 0, 0)
    return count
}

func find(m, n, k, x, y int) {
    if x < 0 || x == m {
        return
    }
    if y < 0 || y == n {
        return
    }
    if record[x][y] {
        return
    }
    if countn(x)+countn(y) > k {
        return
    }

    record[x][y] = true
    count++
    find(m, n, k, x+1, y)
    find(m, n, k, x, y+1)
    find(m, n, k, x+1, y)
    find(m, n, k, x-1, y-1)
}

func countn(number int) int {
    result := 0
    for number != 0 {
        result, number = result+number%10, number/10
    }
    return result
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.6MB, 在所有 Go 提交中击败了62.38%的用户
