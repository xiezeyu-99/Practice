#  LeetCode-290-word-pattern

>题目链接

[LeetCode-287-find-the-duplicate-number](https://leetcode-cn.com/problems/find-the-duplicate-number/)

>  思路

二分法

>代码

```go

func findDuplicate(nums []int) int {
	l := len(nums)
	left, right := 1, l-1
	for left < right {
		mid, count := (left+right) >> 1, 0
		for _, v := range nums {
			if v <= mid {
				count++
			}
		}
		if count > mid {
			right = mid
		} else {
			left = mid+1
		}
	}
	return left
}



```


>总结

执行用时 :4ms, 在所有 Go 提交中击败了98.00%的用户
 
内存消耗 :3.8MB, 在所有 Go 提交中击败了69.77%的用户
