# LeetCode-1178-number-of-valid-words-for-each-puzzle

>题目链接

[LeetCode-1178-number-of-valid-words-for-each-puzzle](https://leetcode-cn.com/problems/number-of-valid-words-for-each-puzzle/)

>思路

先用二进制表示每个word的模式，进行桶计数，然后求出每一个puzzles的子集，也用二进制表示，这样就可以用桶的计数得出符合条件的word的个数

>代码

```go

func findNumOfValidWords(words []string, puzzles []string) []int {
    count := make(map[int]int, len(words))
    for _, w := range words{
        count[mask(w)]++
    }

    res := make([]int, len(puzzles))

    for i, p := range puzzles{
        subs := subWithHead(p)
        for _, s := range subs{
            res[i] += count[s]
        }
    }

    return res
}

func mask(w string) int{
    res := 0
    for _, l := range w{
        res |= 1 << uint(l-'a')
    }
    return res
}

func subWithHead(p string)[]int{
    n := len(p)
    res := make([]int, 1, 128)
    res[0] = 1<<uint(p[0]-'a')
    for i := 1; i<n; i++{
        x := 1 << uint(p[i]-'a')
        for _, r := range res{
            res = append(res, r|x)
        }
    }

    return res
}


```

>复杂度分析

时间复杂度：O(n log n)

空间复杂度：O(n)

>总结

执行用时 :72ms, 在所有 Go 提交中击败了92.86%的用户

内存消耗 :14.3MB, 在所有 Go 提交中击败了100.00%的用户
