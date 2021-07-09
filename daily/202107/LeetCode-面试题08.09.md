# LeetCode-面试题08.09

>题目链接

[LeetCode-面试题08.09](https://leetcode-cn.com/problems/bracket-lcci/)

> 思路


>代码

```go

func generateParenthesis(n int) []string {
    res:=[]string{}
    var f func(lr,rr int, path string)
    f = func(lr,rr int, path string){
        if 2*n==len(path){
            res = append(res, path)
            return
        }
        if lr>0{
            f(lr-1,rr,path+"(")
        }
        if lr<rr{
            f(lr,rr-1,path+")")
        }
    }
    f(n,n,"")
    return res
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
