#  LeetCode-375-guess-number-higher-or-lower-ii

>题目链接

[LeetCode-375-guess-number-higher-or-lower-ii](https://leetcode-cn.com/problems/guess-number-higher-or-lower-ii/)

>思路

动态规划

>代码


```go

func getMoneyAmount(n int) int {
	memo := make([][]int, n+1)
	for k := range memo {
		memo[k] = make([]int, n+1)
	}
	for l := 2; l <= n; l++ {
		for left := 1; left+l-1 <= n; left++ {
			minValue := math.MaxInt32
			right := left + l - 1
			for piv := left; piv < right; piv++ {
				minValue = min(minValue, piv+max(memo[left][piv-1], memo[piv+1][right]))
			}
			memo[left][right] = minValue
		}
	}
	return memo[1][n]
}

func max(num1, num2 int) int {
	if num1 > num2 {
		return num1
	}
	return num2
}

func min(num1, num2 int) int {
	if num1 < num2 {
		return num1
	}
	return num2
}




```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n^2)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了88.89%的用户
 
内存消耗 :4.8MB, 在所有 Go 提交中击败了62.72%的用户
