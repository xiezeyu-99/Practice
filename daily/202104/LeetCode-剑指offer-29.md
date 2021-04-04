# LeetCode-剑指offer-29

>题目链接

[LeetCode-剑指offer-29](https://leetcode-cn.com/problems/shun-shi-zhen-da-yin-ju-zhen-lcof/)

> 思路

不断缩小边界

>代码

```go

func spiralOrder(matrix [][]int) []int {
    if len(matrix) == 0{
        return []int{}
    }
    left, right, up, down := 0, len(matrix[0])-1, 0, len(matrix)-1
    res := []int{}
    for  {

        for i := left; i <= right; i++ {
            res = append(res, matrix[up][i])
        }
        up++
        if up > down {
            break
        }
        for i := up; i <= down; i++ {
            res = append(res, matrix[i][right])
        }
        right--
        if left > right {
            break
        }
        for i := right; i >= left; i-- {
            res = append(res, matrix[down][i])
        }
        down--
        if up > down {
            break
        }
        for i := down; i >= up; i-- {
            res = append(res, matrix[i][left])
        }
        left++
        if left > right {
            break
        }
    }
    return res
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了49.09%的用户

内存消耗 :6.5MB, 在所有 Go 提交中击败了15.82%的用户
