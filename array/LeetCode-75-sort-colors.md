# LeetCode-75-sort-colors

> 题目链接

[LeetCode-75-sort-colors](https://leetcode-cn.com/problems/sort-colors/)

> 思路

1.建立三个指针，分别记录插入0的位置，插入2的位置以及当前遍历的位置，0指针的位置从左边开始，2指针的位置从右边开始

2.遍历数组，当遇到0时，把当前位置与0指针位置的数值交换，0指针加1，由于交换上来当前位置的数值只可能是1，所以当前位置指针也加1

3.当遇到2时，把当前位置与2指针位置的数值交换，2指针减一

4.当遇到1时，不进行数值交换，当前位置指针直接加1

> 代码

```go
func sortColors(nums []int) {
	if len(nums) <= 1 {
		return
	}
	cur, insert0 := 0, 0
	insert2 := len(nums) - 1

	for cur <= insert2 {
		if nums[cur] == 0 {
			if cur != insert0 {
				nums[cur], nums[insert0] = nums[insert0], nums[cur]			
			}
			insert0++
			cur++
		} else if nums[cur] == 1 {
			cur++
		} else {
			nums[cur], nums[insert2] = nums[insert2], nums[cur]
			insert2--
		}
	}
}
```

> 复杂度分析

时间复杂度O(n)

空间复杂度O(1)

> 总结

执行用时 : 0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2MB, 在所有 Go 提交中击败了100.00%的用户


