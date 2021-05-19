# LeetCode-1738

>题目链接

[LeetCode-1738](https://leetcode-cn.com/problems/find-kth-largest-xor-coordinate-value/)

> 思路


>代码

```go

func kthLargestValue(matrix [][]int, k int) int {
    res:=make([][]int, len(matrix))
    results := []int{}
    for i:=0;i<len(matrix);i++{
        res[i] = make([]int, len(matrix[i]))
        for j:=0;j<len(matrix[i]);j++ {
            if i == 0 && j == 0{
                res[i][j] = matrix[0][0]
            } else if i == 0 {
                res[i][j] = res[i][j-1] ^ matrix[i][j]
            } else if j == 0 {
                res[i][j] = res[i-1][j] ^ matrix[i][j]
            } else {
                res[i][j] = res[i-1][j-1] ^ res[i-1][j] ^ res[i][j-1] ^ matrix[i][j]
            }
            results = append(results, res[i][j])
        }    
    }
    sort.Ints(results)
    return results[len(results)-k]
}
```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :524ms, 在所有 Go 提交中击败了41.18%的用户

内存消耗 :60.6MB, 在所有 Go 提交中击败了17.65%的用户
