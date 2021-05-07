# LeetCode-剑指offer-59-II

>题目链接

[LeetCode-剑指offer-59-II](https://leetcode-cn.com/problems/dui-lie-de-zui-da-zhi-lcof/)

> 思路

双队列，一个正常存数据，一个按大小排序，从队尾入列，遇到前面比它小的，证明也会比它先出列，没有机会当最大值，所以就弹出去

>代码

```go

type MaxQueue struct {
    q1 []int
    max []int
}

func Constructor() MaxQueue {
    return MaxQueue{
        make([]int,0),
        make([]int,0),
    }
}

func (this *MaxQueue) Max_value() int {
    if len(this.max) == 0{
        return -1
    }
    return this.max[0]
}

func (this *MaxQueue) Push_back(value int)  {
    this.q1 = append(this.q1,value)
    for len(this.max) != 0 && value > this.max[len(this.max)-1]{
        this.max = this.max[:len(this.max)-1]
    }
    this.max = append(this.max,value)
}

func (this *MaxQueue) Pop_front() int {
    n := -1
    if len(this.q1) != 0{
        n = this.q1[0]
        this.q1 = this.q1[1:]
        if this.max[0] == n{
            this.max = this.max[1:]
        }
    }
    return n
}

/**
 * Your MaxQueue object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Max_value();
 * obj.Push_back(value);
 * param_3 := obj.Pop_front();
 */



```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :96ms, 在所有 Go 提交中击败了96.13%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了61.42%的用户
