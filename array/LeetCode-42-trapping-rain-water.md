# LeetCode-42-trapping-rain-water

>题目链接

[LeetCode-42-trapping-rain-water](https://leetcode-cn.com/problems/trapping-rain-water/)

>思路

使用左右两个指针，当左边小于右边时，短板在左边，中间无论是怎么样的数字排列，最终右边肯定存在可以档水的墙，因此左指针移动并记录下遍历到的左边的最大值（左短板），每一格的注水高度等于最大值减去当前高度；当右边小于左边是同理，移动右指针。


>代码

```go
func trap(height []int) int {
	count,leftMax,rightMax:=0,0,0

	left,right:=0,len(height)-1

	for left<right {
		if height[left] < height[right] {
			if height[left] >=leftMax {
				leftMax = height[left]
			} else {
				count += leftMax-height[left]
			}
			left++
		} else {
			if height[right] >=rightMax {
				rightMax = height[right]
			} else {
				count += rightMax-height[right]
			}
			right--
		}
	}
	return count
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结


执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.8 MB, 在所有 Go 提交中击败了100.00%的用户
