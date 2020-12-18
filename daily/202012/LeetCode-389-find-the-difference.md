#  LeetCode-389-find-the-difference

>题目链接

[LeetCode-389-find-the-difference](https://leetcode-cn.com/problems/find-the-difference/)

>  思路

异或

>代码

```go

func findTheDifference(s string, t string) byte {
    var res int32
    for _, v := range s {
        res = res ^ v
    }
    for _, v := range t {
        res = res ^ v
    }
    return byte(res)
}


```


>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.1MB, 在所有 Go 提交中击败了77.31%的用户
