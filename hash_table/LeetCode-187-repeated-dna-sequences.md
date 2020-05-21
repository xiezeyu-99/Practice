# LeetCode-187-repeated-dna-sequences

> 题目链接

[LeetCode-187-repeated-dna-sequences](https://leetcode-cn.com/problems/repeated-dna-sequences/)

> 思路

把字符串按每10个字母一组进行切片操作，作为map的key值，然后出现两次以上的放入结果集

> 代码

```go

func findRepeatedDnaSequences(s string) []string {
    temp := make(map[string]int)
    result := []string{}
    for i:=0;i<=len(s)-10;i++{
        key := s[i:i+10]
        temp[key]++
        if temp[key]==2 {
            result = append(result,key)
        }
    }
 
    return result
}

```

> 复杂度分析

时间复杂度：O(n-10)

空间复杂度：O(n)

> 总结

执行用时 :20ms, 在所有 Go 提交中击败了86.23%的用户

内存消耗 :9.8MB, 在所有 Go 提交中击败了100.00%的用户

