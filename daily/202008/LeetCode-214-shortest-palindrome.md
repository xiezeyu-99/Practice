# LeetCode-214-shortest-palindrome
>题目链接

[LeetCode-214-shortest-palindrome](https://leetcode-cn.com/problems/shortest-palindrome/)

>思路

反转字符串，然后找反转字符串尾部与原字符串头部的公共部分

>代码

```go

func shortestPalindrome(s string) string {

	l := len(s)
	rs := reverserStr(s)

	i := 0
	for ; i < l; i++ {
		if rs[i:] == s[:l-i] {
			break
		}
	}

	return rs[:i] + s
}

func reverserStr(x string) string {

	res := strings.Builder{}
	for i := len(x) - 1; i >= 0; i-- {
		res.WriteByte(x[i])
	}
	return res.String()
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了60.64%的用户

内存消耗 :3MB, 在所有 Go 提交中击败了51.35%的用户
