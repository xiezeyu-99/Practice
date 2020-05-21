# LeetCode-49-group-anagrams

> 题目链接

[LeetCode-49-group-anagrams](https://leetcode-cn.com/problems/group-anagrams/)

> 思路

对字符串中的字母进行计数，然后把计数结果转换成字符串，作为map的key值，把有相同key值的字符串放一起

> 代码

```go

func groupAnagrams(strs []string) [][]string {
    temp := make(map[string]int)
    result := [][]string{}
    j := 0
    for i := 0; i < len(strs); i++ {
        str := [26]byte{}
        for _, v := range strs[i] {
            str[v-'a']++
        }
        key := string(str[:])
 
        if temp[key] > 0 {
            result[temp[key]-1] = append(result[temp[key]-1], strs[i])
        } else {
            temp[key] = j + 1
            j++
            result = append(result, []string{strs[i]})
        }
 
    }
    return result
}

```

> 复杂度分析

时间复杂度：O(nk)，k是字符串长度

空间复杂度：O(n)

> 总结

执行用时 :20ms, 在所有 Go 提交中击败了98.47%的用户

内存消耗 :6.7MB, 在所有 Go 提交中击败了100.00%的用户

