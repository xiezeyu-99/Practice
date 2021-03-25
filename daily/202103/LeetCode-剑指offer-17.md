# LeetCode-剑指offer-17

>题目链接

[LeetCode-剑指offer-17](https://leetcode-cn.com/problems/da-yin-cong-1dao-zui-da-de-nwei-shu-lcof/)

> 思路


>代码

```go

func printNumbers(n int) []int {
    max:=0
    for i:=0;i<n;i++{
        max = max*10+9
    }
    res:=[]int{}
    for i:=1;i<=max;i++{
        res = append(res,i)
    }
    return res
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了92.18%的用户

内存消耗 :8.2MB, 在所有 Go 提交中击败了7.26%的用户
