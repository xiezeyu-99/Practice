#  LeetCode-386-lexicographical-numbers

>题目链接

[LeetCode-386-lexicographical-numbers](https://leetcode-cn.com/problems/lexicographical-numbers/)

>思路

前缀树的前序遍历，每个节点的第一个子节点等于节点乘以10，下一个兄弟节点等于当前节点加1

>代码

```go

func lexicalOrder(n int) []int {
    ret := make([]int, 0)
    num := 1
    for {
        if num <= n {
            ret = append(ret, num)
            num *= 10
        } else {
            num /= 10
            for num % 10 == 9 {
                num /= 10
            }
            if num == 0 {
                break
            }
            num++
        }
    }
    return ret
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了79.92%的用户
 
内存消耗 :6.4MB, 在所有 Go 提交中击败了35.07%的用户
