# LeetCode-41-first-missing-positive

>题目链接

[LeetCode-41-first-missing-positive](https://leetcode-cn.com/problems/first-missing-positive/)

>思路

先遍历数组，遇到范围在1到len(nums)之间的数字时，假设为x，就把该数字与下标x-1的元素进行位置交换，一轮遍历后，除了缺失的位置外，其余的位置都会变得有序而且与下标相对于，

找出第一个乱序的位置，就是缺失的最小正整数

>代码

```go

func firstMissingPositive(nums []int) int {
    i:=0
    length:=len(nums)
    for i<len(nums){
        if nums[i] >= 1 && nums[i]<=length && nums[i]!=nums[nums[i]-1] {
            nums[i],nums[nums[i]-1]=nums[nums[i]-1],nums[i]
        } else {
            i++
        }
    }

    for i:=range nums {
        if nums[i] !=i+1{
            return i+1
        }
    }
    return length+1
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了100.00%的用户
