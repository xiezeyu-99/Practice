#  LeetCode-283-move-zeroes

>题目链接

[LeetCode-283-move-zeroes](https://leetcode-cn.com/problems/move-zeroes/)

>思路

双指针，一个指针指向0，一个指针指向下一个非0

>代码

```go

func moveZeroes(nums []int)  {
	nonZeroIndex := 0

	for i := 0; i < len(nums); i++ {
		if nums[i] != 0 {			
			if i != nonZeroIndex {
				nums[nonZeroIndex],nums[i] = nums[i],nums[nonZeroIndex]
			}
			nonZeroIndex++
		}
	}
	return
}
  


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了94.32%的用户
 
内存消耗 :3.7MB, 在所有 Go 提交中击败了68.55%的用户
