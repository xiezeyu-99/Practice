# LeetCode-171-excel-sheet-column-number

>题目链接

[LeetCode-171-excel-sheet-column-number](https://leetcode-cn.com/problems/excel-sheet-column-number/)

>思路

一位一位字母地转换，注意是26进制

>代码

```go

func titleToNumber(s string) int {
    ans:=0
    pow := 1
    for s!=""{
        l:=s[len(s)-1]
        ans = (int(l-'A') + 1)*pow   + ans    
        s = s[:len(s)-1]
        pow*=26
    }
    return ans
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.2MB, 在所有 Go 提交中击败了29.65%的用户
