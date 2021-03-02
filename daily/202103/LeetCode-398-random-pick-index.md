#  LeetCode-398-random-pick-index

>题目链接

[LeetCode-398-random-pick-index](https://leetcode-cn.com/problems/random-pick-index/)

>思路

蓄水池抽样

>代码

```go

type Solution struct {
    nums []int
}


func Constructor(nums []int) Solution {
    return Solution{nums}
}

//蓄水池采样法 O(n),O(1)
func (this *Solution) Pick(target int) int {
    index := -1 //答案索引
    count := 0  //target个数
    for i := 0; i < len(this.nums); i++ {
        if this.nums[i] == target {
            count++        //count必++
            //0~count-1等概率抽取一个，如果是0，那么索引给它
            //count=1时，必抽到0
            if rand.Intn(count) == 0 {
                index = i
            }
        }
    }
    return index
}


/**
 * Your Solution object will be instantiated and called as such:
 * obj := Constructor(nums);
 * param_1 := obj.Pick(target);
 */

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :116ms, 在所有 Go 提交中击败了81.69%的用户
 
内存消耗 :8.8MB, 在所有 Go 提交中击败了46.48%的用户
