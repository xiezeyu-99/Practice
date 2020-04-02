# LeetCode-80-remove-duplicates-from-sorted-array-ii

> 题目链接

[LeetCode-80-remove-duplicates-from-sorted-array-ii](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array-ii/)

> 思路

遍历数组，找到连续三个数字相同的，从第三个数字开始内循环，直到数字不相同为止，用切片操作截取掉中间重复的部分

> 代码

```go
func removeDuplicates(nums []int) int {
	var start, end int
	for i := 0; i < len(nums)-2; i++ {
		if nums[i] == nums[i+1] && nums[i+1] == nums[i+2] {
			start, end = i+2, i+2

			for end < len(nums)-1 {
				if nums[end] == nums[end+1] {
					end++
				} else {
					break
				}
			}
			nums[start] = nums[end+1]
			nums = append(nums[:start], nums[end+1:]...)
			i++
		}
	}
	return len(nums)
}
```

> 复杂度分析

时间复杂度O(n)

空间复杂度O(1)

> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户
内存消耗 :3 MB, 在所有 Go 提交中击败了100.00%的用户


