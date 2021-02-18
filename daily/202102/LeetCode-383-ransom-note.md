#  LeetCode-383-ransom-note

>题目链接

[LeetCode-383-ransom-note](https://leetcode-cn.com/problems/ransom-note/)

>思路

map

>代码

```go

func canConstruct(ransomNote string, magazine string) bool {
    mMap:=make(map[rune]int)
    for _,v:=range magazine {
        mMap[v]++
    }
    for _,v:=range ransomNote {
        if mMap[v] == 0 {
            return false
        }
        mMap[v]--
    }
    return true
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了45.16%的用户
 
内存消耗 :3.8MB, 在所有 Go 提交中击败了54.84%的用户
