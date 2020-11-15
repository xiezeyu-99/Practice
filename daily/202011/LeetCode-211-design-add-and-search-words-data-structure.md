#  LeetCode-211-design-add-and-search-words-data-structure

>题目链接

[LeetCode-211-design-add-and-search-words-data-structure](https://leetcode-cn.com/problems/design-add-and-search-words-data-structure/)

>思路

把相同长度的单词放在一个桶里面，实际运行起来比花里胡俏的前缀树快很多

>代码

```go

// github.com/EndlessCheng/codeforces-go
func init() { debug.SetGCPercent(-1) }

type WordDictionary struct {
    items map[int][]string
}


/** Initialize your data structure here. */
func Constructor() WordDictionary {
    return WordDictionary { make(map[int][]string) }
}


/** Adds a word into the data structure. */
func (this *WordDictionary) AddWord(word string)  {
    l := len(word)
    if list, ok := this.items[l]; ok {
        this.items[l] = append(list, word)
    } else {
        this.items[l] = []string { word }
    }
}


/** Returns if the word is in the data structure. A word could contain the dot character '.' to represent any one letter. */
func (this *WordDictionary) Search(word string) bool {
    l := len(word)
    if list, ok := this.items[l]; ok {
        for _, w := range list {
            i := 0
            for i < l {
                if w[i] != word[i] && word[i] != '.' {
                    break
                }
                i++
            }
            if i == l {
                return true
            }
        }
    }
    return false
}
```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :28ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :31.2MB, 在所有 Go 提交中击败了5.44%的用户
