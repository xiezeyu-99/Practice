#  LeetCode-242-valid-anagram

>题目链接

[LeetCode-242-valid-anagram](https://leetcode-cn.com/problems/valid-anagram/)

>思路

用map计数

>代码

```go

func isAnagram(s string, t string) bool {
    if len(s)!=len(t){
        return false
    }
    status:=make(map[byte]int)
    for i:=0;i<len(s);i++{
        status[s[i]]++
        status[t[i]]--
    }
    for _,v:=range status{
        if v!=0{
            return false
        }
    }
    return true
    
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了59.89%的用户
 
内存消耗 :2.8MB, 在所有 Go 提交中击败了66.27%的用户
