#  LeetCode-212-word-search-ii

>题目链接

[LeetCode-212-word-search-ii](https://leetcode-cn.com/problems/word-search-ii/)


>代码

```go

type Trie struct {
    links map[rune]*Trie
    word string
}

func findWords(board [][]byte, words []string) []string {
    res := []string{}

    if len(board) == 0 || len(board[0]) == 0 || len(words) == 0 {
        return res
    }

    m := len(board)
    n := len(board[0])

    links := make(map[rune]*Trie)
    dict := &Trie{links: links}

    for _, word := range words {
        root := dict
        for _, c := range word {
            if _, ok := root.links[c]; !ok {
                links := make(map[rune]*Trie)
                root.links[c] = &Trie{links: links}
            }
            root = root.links[c]
        }
        root.word = word
    }

    for i := 0; i < m; i++ {
        for j := 0; j < n; j++ {
            dfs(board, m, n, i, j, dict, &res)
        }
    }

    return res
}

func dfs(board [][]byte, m, n, i, j int, root *Trie, res *[]string) {
    if i < 0 || i >= m || j < 0 || j >= n {
        return
    }
    c := rune(board[i][j])
    next, ok := root.links[c]
    if !ok {
        return
    }

    if len(next.word) > 0 {
        *res = append(*res, next.word)
        next.word = ""
    }

    board[i][j] = '#'
    
    rowOffset := []int{-1, 0, 1, 0}
    colOffset := []int{0, -1, 0, 1}
    for k := 0; k < 4; k++ {
        dfs(board, m, n, i + rowOffset[k], j + colOffset[k], next, res)
    }

    board[i][j] = byte(c)

    if len(next.links) == 0 {
        delete(root.links, c)
    }
}
```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.2MB, 在所有 Go 提交中击败了98.01%的用户
