# LeetCode-27-remove-element
>题目链接

[LeetCode-27-remove-element](https://leetcode-cn.com/problems/remove-element/)

>思路

双指针，慢指针固定在目标值位置，然后把快指针的值赋值过来

>代码

```go

func removeElement(nums []int, val int) int {
    postion := 0

    for i := range nums {
        if nums[i] == val {
            continue
        }
        nums[postion] = nums[i]
        postion++
    }
    return postion
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了58.82%的用户
