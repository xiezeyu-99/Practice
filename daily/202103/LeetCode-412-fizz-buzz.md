# LeetCode-412-fizz-buzz

>题目链接

[LeetCode-412-fizz-buzz](https://leetcode-cn.com/problems/fizz-buzz/)

>思路



>代码

```go

func fizzBuzz(n int) []string {
    res:=[]string{}
    for i:=1;i<=n;i++ {
        v:=""
        if i%3 == 0 {
            v = "Fizz"
        } 
        if i%5 == 0 {
            v += "Buzz"
        }
        if v == "" {
            v = strconv.Itoa(i)
        }
        res = append(res, v)
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了94.86%的用户

内存消耗 :4.1MB, 在所有 Go 提交中击败了12.65%的用户
