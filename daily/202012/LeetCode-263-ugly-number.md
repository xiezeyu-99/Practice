#  LeetCode-263-ugly-number

>题目链接

[LeetCode-263-ugly-number](https://leetcode-cn.com/problems/ugly-number/)

>  思路

不断尝试是否能除尽2,3,5

>代码

```go

func isUgly(num int) bool {
    if num<=0{
        return false
    }
    for num > 1 {
        if num%2 == 0 {
            num /= 2
        } else if num%3 == 0 {
            num /= 3
        } else if num%5 == 0 {
            num /= 5
        } else {
            return false
        }
    }
    return true
}

```


>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.1MB, 在所有 Go 提交中击败了95.41%的用户
