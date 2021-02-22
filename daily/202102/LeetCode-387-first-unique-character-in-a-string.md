#  LeetCode-387-first-unique-character-in-a-string

>题目链接

[LeetCode-387-first-unique-character-in-a-string](https://leetcode-cn.com/problems/first-unique-character-in-a-string/)

>思路


>代码

```go

func firstUniqChar(s string) int {
    status:=[26]int{}
    for _,v:=range s{
        status[v-'a']++
    }

    for i,v:=range s{
        if status[v-'a'] == 1 {
            return i
        }
    }
    return -1
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了78.60%的用户
 
内存消耗 :5.2MB, 在所有 Go 提交中击败了99.95%的用户
