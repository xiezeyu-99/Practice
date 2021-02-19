#  LeetCode-384-shuffle-an-array

>题目链接

[LeetCode-384-shuffle-an-array](https://leetcode-cn.com/problems/shuffle-an-array/)

>思路

洗牌算法

>代码

```go

type Solution struct {
    arr []int
}


func Constructor(nums []int) Solution {
    
    return Solution{nums}
}


/** Resets the array to its original configuration and return it. */
func (this *Solution) Reset() []int {
    return this.arr
}


/** Returns a random shuffling of the array. */
func (this *Solution) Shuffle() []int {
    n := len(this.arr)
    res := make([]int, n)
    copy(res, this.arr)
    for i := n-1; i >= 0; i-- {
        rand := rand.Intn(i+1)    // math.rand中的Intn(i+1)返回[0, i]范围的整数，每次数组在下标index为[0, i]范围内随机找一个下标对应的元素与当前位置i处的元素进行交换
        res[i], res[rand] = res[rand], res[i]   // 对应位置元素交换，也可以使用如下代码
    } 
    return res
}


/**
 * Your Solution object will be instantiated and called as such:
 * obj := Constructor(nums);
 * param_1 := obj.Reset();
 * param_2 := obj.Shuffle();
 */


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :52ms, 在所有 Go 提交中击败了78.79%的用户
 
内存消耗 :10MB, 在所有 Go 提交中击败了5.45%的用户
