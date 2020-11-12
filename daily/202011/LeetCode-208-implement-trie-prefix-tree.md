#  LeetCode-208-implement-trie-prefix-tree

>题目链接

[LeetCode-208-implement-trie-prefix-tree](https://leetcode-cn.com/problems/implement-trie-prefix-tree/)

>思路

把字母转为数字，作为数组的索引，然后插入时，每个节点标识是否为最后一个节点

>代码

```go

type Trie struct {
    next  [26]*Trie
    isEnd bool
}

/** Initialize your data structure here. */
func Constructor() Trie {
    return Trie{}
}

/** Inserts a word into the trie. */
func (this *Trie) Insert(word string) {
    node := this
    for _, v := range word {
        v -= 'a'
        if node.next[v] == nil {
            node.next[v] = &Trie{}
        }
        node = node.next[v]
    }
    node.isEnd = true
}

/** Returns if the word is in the trie. */
func (this *Trie) Search(word string) bool {
    node := this
    for _, v := range word {
        if node = node.next[v-'a']; node == nil {
            return false
        }
    }
    return node.isEnd
}

/** Returns if there is any word in the trie that starts with the given prefix. */
func (this *Trie) StartsWith(prefix string) bool {
    node := this
    for _, v := range prefix {
        if node = node.next[v-'a']; node == nil {
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

执行用时 :68ms, 在所有 Go 提交中击败了70.52%的用户
 
内存消耗 :23.6MB, 在所有 Go 提交中击败了5.23%的用户
