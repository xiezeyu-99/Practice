# LeetCode-剑指offer-21

>题目链接

[LeetCode-剑指offer-21](https://leetcode-cn.com/problems/diao-zheng-shu-zu-shun-xu-shi-qi-shu-wei-yu-ou-shu-qian-mian-lcof/)

> 思路


>代码

```go

func exchange(nums []int) []int {
    i,j:=0,0

    for j<len(nums){
        if nums[j]%2!=0{
            nums[i],nums[j] = nums[j],nums[i]
            i++
        }
        j++
    }
    return nums
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :20ms, 在所有 Go 提交中击败了95.25%的用户

内存消耗 :6.8MB, 在所有 Go 提交中击败了13.61%的用户
