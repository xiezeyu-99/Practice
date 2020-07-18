# LeetCode-17-letter-combinations-of-a-phone-number

>题目链接

[LeetCode-17-letter-combinations-of-a-phone-number](https://leetcode-cn.com/problems/letter-combinations-of-a-phone-number/)

>思路

回溯找出所有可能性

>代码

```go

var numsMap = [][]string{
    {"a", "b", "c"},
    {"d", "e", "f"},
    {"g", "h", "i"},
    {"j", "k", "l"},
    {"m", "n", "o"},
    {"p", "q", "r", "s"},
    {"t", "u", "v"},
    {"w", "x", "y", "z"},
}

var result []string

func letterCombinations(digits string) []string {
    result = []string{}
    dp(0, digits, "")
    return result

}

func dp(i int, digits, ans string) {
    if i > len(digits)-1 {
        result = append(result, ans)
    }
    nums, _ := strconv.Atoi(string(digits[i]))
    for j := 0; j < len(numsMap[nums-2]); j++ {
        ans = ans + numsMap[nums-2][j]
        dp(i+1, digits, ans)
        ans = ans[:len(ans)-1]
    }
}



```

>复杂度分析

时间复杂度：O(3^n*4^m)，n是对应三个字母的数字个数，m是对应4个字母的数字个数

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2MB, 在所有 Go 提交中击败了100.00%的用户
