# LeetCode-344-reverse-string
>题目链接

[LeetCode-344-reverse-string](https://leetcode-cn.com/problems/reverse-string/)

>思路

反转

>代码

```go

func reverseString(s []byte)  {
    left,right:=0,len(s)-1

    for left<right{
        s[left],s[right] = s[right],s[left]
        left++
        right--
    }
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :40ms, 在所有 Go 提交中击败了87.32%的用户
 
内存消耗 :6.5MB, 在所有 Go 提交中击败了46.05%的用户
