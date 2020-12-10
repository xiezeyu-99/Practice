#  LeetCode-258-add-digits

>题目链接

[LeetCode-258-add-digits](https://leetcode-cn.com/problems/add-digits/)

>思路

不断迭代计算

>代码

```go

func addDigits(num int) int {
    if num == 0 {
        return 0
    }
    sum := 0
    for sum == 0 || sum >= 10 {
        sum = 0
        for num > 0 {
            sum += num % 10
            num = num / 10
        }
        num = sum
    }
    return sum
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.1MB, 在所有 Go 提交中击败了98.61%的用户
