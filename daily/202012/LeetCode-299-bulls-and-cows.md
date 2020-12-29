#  LeetCode-299-bulls-and-cows

>题目链接

[LeetCode-299-bulls-and-cows](https://leetcode-cn.com/problems/bulls-and-cows/)

>思路

两个map保存不相同的字母的数量，然后取小值

>代码

```go

func getHint(secret string, guess string) string {
    a, b := 0, 0
    mapS, mapG := make([]int, 10), make([]int, 10)
    for i := range secret {
        if secret[i] == guess[i] {
            a++
        } else {
            mapS[secret[i]-'0']++
            mapG[guess[i]-'0']++
        }
    }
    for i := 0; i < 10; i++ {
        //找到重叠的
        b += min(mapS[i], mapG[i])
    }
    //strconv.Itoa : 整数转字符串
    return strconv.Itoa(a) + "A" + strconv.Itoa(b) + "B"
}

func min(a, b int) int {
    if a > b {
        return b
    }
    return a
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.2MB, 在所有 Go 提交中击败了100.00%的用户
