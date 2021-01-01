#  LeetCode-303-range-sum-query-immutable

>题目链接

[LeetCode-303-range-sum-query-immutable](https://leetcode-cn.com/problems/range-sum-query-immutable/)

>思路

不存储数组，而是存储数组的前缀和

>代码

```go

type NumArray struct {
    data []int
}

func Constructor(nums []int) NumArray {
    data := []int{0}
    sum := 0
    for _, v := range nums {
        sum += v
        data = append(data, sum)
    }
    return NumArray{
        data: data,
    }
}

func (this *NumArray) SumRange(i int, j int) int {
    return this.data[j] - this.data[i-1]
}

/**
 * Your NumArray object will be instantiated and called as such:
 * obj := Constructor(nums);
 * param_1 := obj.SumRange(i,j);
 */

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(n)

>总结

执行用时 :28ms, 在所有 Go 提交中击败了98.41%的用户
 
内存消耗 :9.4MB, 在所有 Go 提交中击败了41.13%的用户
