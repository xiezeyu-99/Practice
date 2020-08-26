# LeetCode-88-merge-sorted-array
>题目链接

[LeetCode-88-merge-sorted-array](https://leetcode-cn.com/problems/merge-sorted-array/)

>思路

双指针，从后开始比较，把大的数放到nums1末尾，并且移动指针，这样可以不需要额外空间

>代码

```go

func merge(nums1 []int, m int, nums2 []int, n int)  {
	p1,p2,p:=m-1,n-1,len(nums1)-1

	for p1>=0&&p2>=0 {
		if nums1[p1] > nums2[p2] {
			nums1[p] = nums1[p1]
			p1--
		} else {
			nums1[p] = nums2[p2]
			p2--
		}
		p--
	}

	for p2 >=0 {
		nums1[p] = nums2[p2]
		p--
		p2--
	}

	for p1 >=0 {
		nums1[p] = nums1[p1]
		p--
		p1--
	}
}

```

>复杂度分析

时间复杂度：O(n+m)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.3MB, 在所有 Go 提交中击败了100.005%的用户
