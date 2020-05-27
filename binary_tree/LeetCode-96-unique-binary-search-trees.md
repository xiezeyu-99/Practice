# LeetCode-96-unique-binary-search-trees

> 题目链接

[LeetCode-96-unique-binary-search-trees](https://leetcode-cn.com/problems/unique-binary-search-trees/)

> 思路

卡特兰公式：f(n) = f(n - 1) * 2 * (2 * n + 1) / (n + 2)

> 代码

```go

func numTrees(n int) int {
    result:=1
    
    for i:=0;i<n;i++{
        result = result*2*(2*i+1)/(i+2)
    }
    return result
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

> 总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 2.1MB, 在所有 Go 提交中击败了66.67%的用户

