# LeetCode-面试题03.02

>题目链接

[LeetCode-面试题03.02](https://leetcode-cn.com/problems/min-stack-lcci/)

> 思路


>代码

```go

type MinStack struct {
    data []int
    stack []int
}


/** initialize your data structure here. */
func Constructor() MinStack {
    return MinStack{
        stack:[]int{math.MaxInt32},
    }
}


func (this *MinStack) Push(x int)  {
    this.data = append(this.data, x)
    top := this.stack[len(this.stack)-1]
    if top < x {
        x = top
    }
    this.stack = append(this.stack, x)

}


func (this *MinStack) Pop()  {
    this.data = this.data[:len(this.data)-1]
    this.stack = this.stack[:len(this.stack)-1]
}


func (this *MinStack) Top() int {
    return this.data[len(this.data)-1]
}


func (this *MinStack) GetMin() int {
    return this.stack[len(this.stack)-1]
}


/**
 * Your MinStack object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Push(x);
 * obj.Pop();
 * param_3 := obj.Top();
 * param_4 := obj.GetMin();
 */
```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(n)

>总结

执行用时 :20ms, 在所有 Go 提交中击败了87.50%的用户

内存消耗 :8.2MB, 在所有 Go 提交中击败了59.37%的用户
