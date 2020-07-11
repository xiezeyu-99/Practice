# LeetCode-5-longest-palindromic-substring

>题目链接

[LeetCode-5-longest-palindromic-substring](https://leetcode-cn.com/problems/longest-palindromic-substring/)

>思路

暴力法，找到有可能是回文串的中点的位置，然后左右指针遍历找出最长回文串

>代码

```go

func longestPalindrome(s string) string {
    if len(s)==0{
        return ""
    }
    max:=string(s[0])
    for i:=0;i<len(s);i++{
        if i+1 <= len(s)-1&&s[i] == s[i+1] {
            str:=find(i,i+1,s)
            if len(str)>len(max) {
                max = str
            }
        }
        if i+2 <= len(s)-1&&s[i] == s[i+2] {
            str:=find(i,i+2,s)
            if len(str)>len(max) {
                max = str
            }
        }
    }
    return max
}

func find(left,right int, s string) string{
    for left >=0 && right<=len(s)-1 && s[left]==s[right]{
        left--
        right++
    }
    return s[left+1:right]
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了95.25%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了89.66%的用户
