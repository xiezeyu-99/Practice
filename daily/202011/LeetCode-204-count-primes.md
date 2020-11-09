#  LeetCode-204-count-primes

>题目链接

[LeetCode-204-count-primes](https://leetcode-cn.com/problems/count-primes/)

>思路

遍历，把每个数以及它的倍数都标记起来

>代码

```go

func countPrimes(n int) int {
    status:=make(map[int]bool)
    var count = 0
    for i:=2;i<n;i++{
        if status[i]{
            continue
        }
        count++
        for j:=2*i;j<n;j+=i{
            status[j] = true
        }
    }
    return count
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :900ms, 在所有 Go 提交中击败了8.39%的用户
 
内存消耗 :96.2MB, 在所有 Go 提交中击败了5.03%的用户
