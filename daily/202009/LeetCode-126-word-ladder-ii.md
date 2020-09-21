# LeetCode-126-word-ladder-ii
>题目链接

[LeetCode-126-word-ladder-ii](https://leetcode-cn.com/problems/word-ladder-ii/)

>思路

图 + 广度优先（其实没看懂）

>代码

```go


func findLadders(beginWord string, endWord string, wordList []string) [][]string {
    wordSet := make(map[string]bool)
    for _, word := range wordList {
        wordSet[word] = true
    }
    if !wordSet[endWord] {
        return nil
    }
    // delete(wordSet, endWord)
    src, dst := map[string]bool{beginWord: true}, map[string]bool{endWord: true}
    dict := make(map[string][]string)
    var reverse, isEnd bool
    for len(src) != 0 && len(dst) != 0 && !isEnd {
        if len(src) > len(dst) {
            src, dst = dst, src
            reverse = !reverse
        }
        for word := range src {
            delete(wordSet, word)
        }
        newSrc := make(map[string]bool)
        for word := range src {
            bytes := []byte(word)
            for i := range bytes {
                for j := 'a'; j <= 'z'; j++ {
                    bytes[i] = byte(j)
                    targetWord := string(bytes)
                    if dst[targetWord] {
                        if reverse {
                            dict[targetWord] = append(dict[targetWord], word)
                        } else {
                            dict[word] = append(dict[word], targetWord)
                        }
                        isEnd = true
                    } else if wordSet[targetWord] {
                        newSrc[targetWord] = true
                        if reverse {
                            dict[targetWord] = append(dict[targetWord], word)
                        } else {
                            dict[word] = append(dict[word], targetWord)
                        }
                    }
                }
                bytes[i] = word[i]
            }
        }
        src = newSrc
    }
    var out [][]string
    cur := []string{beginWord}
    var recur func([]string)
    recur = func(words []string) {
        if len(words) == 0 {
            return
        }
        for _, word := range words {
            cur = append(cur, word)
            if word == endWord {
                tmp := make([]string, len(cur))
                copy(tmp, cur)
                out = append(out, tmp)
            } else {
                recur(dict[word])
            }
            cur = cur[:len(cur)-1]
        }
    }
    recur(dict[beginWord])
    return out
}



```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n^2)

>总结

执行用时 :28ms, 在所有 Go 提交中击败了99.09%的用户
 
内存消耗 :6.5MB, 在所有 Go 提交中击败了95.92%的用户
