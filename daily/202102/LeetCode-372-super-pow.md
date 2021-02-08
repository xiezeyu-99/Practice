#  LeetCode-372-super-pow

>题目链接

[LeetCode-372-super-pow](https://leetcode-cn.com/problems/super-pow/)

>思路



>代码

```go


func superPow(a int, b []int) int {
	var pow func(x, y int) int
	pow = func(x, y int) int {
		switch y {
		case 0:
			return 1
		case 1:
			return x % 1337
		default:
			return pow(x%1337, y/2) * pow(x%1337, y-y/2) % 1337
		}
	}
	out := 1
	for _, e := range b {
		out = pow(out, 10) * pow(a, e) % 1337
	}
	return out
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了42.312%的用户
 
内存消耗 :3.6MB, 在所有 Go 提交中击败了80.77%的用户
