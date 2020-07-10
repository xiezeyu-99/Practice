# LeetCode-面试题17.13-re-space-lcci

>题目链接

[LeetCode-面试题17.13-re-space-lcci](https://leetcode-cn.com/problems/re-space-lcci/)

>思路

不用Trie，直接动态规划。

从前向后，则未来不可知。所以从后向前，循环动态规划。

每个字节开始动态规划前，初始值设为下一个字节的动态规划值+1（预定一个空格）。

以每个字节为开始到字符串尾的子字符串作为目标，循环字典，寻找前缀子串，找到，则值为前缀子串去掉后剩余子串的动态规划值。

循环字典后，所有动态规划值的最小值为当前字节的最终动态规划值。


>代码

```go

func respace(dictionary []string, sentence string) int {
	buf := make([]int, len(sentence)+1)
	buf[len(sentence)] = 0
	for i := len(sentence) - 1; i >= 0; i-- {
		b := sentence[i:]
		min := buf[i+1] + 1
		for j := 0; j < len(dictionary); j++ {
			if strings.HasPrefix(b, dictionary[j]) {
				if min > buf[i+len(dictionary[j])] {
					min = buf[i+len(dictionary[j])]
				}
			}
		}
		buf[i] = min
	}
	return buf[0]
}

```

>复杂度分析

时间复杂度：O(n*m)

空间复杂度：O(n)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :4.7MB, 在所有 Go 提交中击败了100.00%的用户
