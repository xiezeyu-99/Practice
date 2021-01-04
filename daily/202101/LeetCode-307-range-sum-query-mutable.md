#  LeetCode-307-range-sum-query-mutable

>题目链接

[LeetCode-307-range-sum-query-mutable](https://leetcode-cn.com/problems/range-sum-query-mutable/)

>思路

保存前缀和

>代码

```go

type NumArray struct {
    data []int
}

func Constructor(nums []int) NumArray {
    data := []int{0}
    sum := 0
    for i := 0; i < len(nums); i++ {
        sum += nums[i]
        data = append(data, sum)
    }
    return NumArray{
        data: data,
    }
}

func (this *NumArray) Update(i int, val int) {
    diff := val - (this.data[i+1]-this.data[i])
    for j := i+1; j < len(this.data); j++ {
        this.data[j] += diff
    }
}

func (this *NumArray) SumRange(i int, j int) int {
    return this.data[j+1] - this.data[i]
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :80ms, 在所有 Go 提交中击败了31.25%的用户
 
内存消耗 :9.9MB, 在所有 Go 提交中击败了39.49%的用户
