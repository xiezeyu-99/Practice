# LeetCode-38-count-and-say

>题目链接

[LeetCode-38-count-and-say](https://leetcode-cn.com/problems/count-and-say/)

>思路

递归，由前一个状态推导出下一个状态，初始值为1

>代码

```go

func countAndSay(n int) string {
    if n==1{
        return "1"
    }
    
    return pack(countAndSay(n-1))
}

func pack(str string) string{
    res:=""
    for i:=0;i<len(str);i++{
        count:=1
        for i+1<len(str) && str[i] == str[i+1]{
            count++
            i++
        }
        res +=     strconv.Itoa(count)+string(str[i])
    }
    return res
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :6.4MB, 在所有 Go 提交中击败了42.86%的用户
