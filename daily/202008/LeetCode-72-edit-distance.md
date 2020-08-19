# LeetCode-72-edit-distance
>题目链接

[LeetCode-72-edit-distance](https://leetcode-cn.com/problems/edit-distance/)

>思路

动态规划，用status[i][j]表示word1的前i个字母到word2前j个字母的编辑距离。

status[i][j]的状态可以由status[i-1][j]（word1增加一个字母）、status[i][j-1]（word2增加一个字母）、status[i-1][j-1]（word1修改一个字母）三个状态转换而得

可以直接得出从word1转换成空字符，以及从空字符转换成word2两种情况下的状态值，作为状态数组初始值

>代码

```go

func minDistance(word1 string, word2 string) int {
    status := make([][]int, len(word1)+1)
    for i := 0; i < len(word1)+1; i++ {
        status[i] = make([]int, len(word2)+1)
        status[i][0] = i
        for j := 0; j < len(word2)+1; j++ {
            status[0][j] = j
        }
    }

    for i := 1; i <= len(word1); i++ {
        for j := 1; j <= len(word2); j++ {
            a := status[i-1][j-1]
            if word1[i-1] != word2[j-1] {
                a += 1
            }
            b := status[i][j-1] + 1
            c := status[i-1][j] + 1
            status[i][j] = min(a, b, c)

        }
    }
    return status[len(word1)][len(word2)]
}

func min(a, b, c int) int {
    if a < b {
        if c < a {
            return c
        } else {
            return a
        }
    } else {
        if c < b {
            return c
        } else {
            return b
        }
    }
}

```

>复杂度分析

时间复杂度：O(n*m)

空间复杂度：O(n*m)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :5.7MB, 在所有 Go 提交中击败了81.2%的用户
