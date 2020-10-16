# LeetCode-168-excel-sheet-column-title

>题目链接

[LeetCode-168-excel-sheet-column-title](https://leetcode-cn.com/problems/excel-sheet-column-title/)

>思路

取余去算字母，然后除以26，继续找下一个

>代码

```go

func convertToTitle(n int) string {
    letter:=[]string{"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}
    ans:=""
    for n>0{
        ans = letter[(n-1)%26] + ans      
        n = (n-1)/26
    }
    return ans
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了70.14%的用户
