# LeetCode-剑指offer-30

>题目链接

[LeetCode-剑指offer-30](https://leetcode-cn.com/problems/bao-han-minhan-shu-de-zhan-lcof/)

> 思路

辅助栈

>代码

```go

type MinStack struct {
    stack []int
    minStack []int
}

func Constructor() MinStack {
    return MinStack{
        stack: []int{},
        minStack: []int{math.MaxInt64},
    }
}

func (this *MinStack) Push(x int)  {
    this.stack = append(this.stack, x)
    top := this.minStack[len(this.minStack)-1]
    this.minStack = append(this.minStack, min(x, top))
}

func (this *MinStack) Pop()  {
    this.stack = this.stack[:len(this.stack)-1]
    this.minStack = this.minStack[:len(this.minStack)-1]
}

func (this *MinStack) Top() int {
    return this.stack[len(this.stack)-1]
}

func (this *MinStack) Min() int {
    return this.minStack[len(this.minStack)-1]
}

func min(x, y int) int {
    if x < y {
        return x
    }
    return y
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(n)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了100.0099.39的用户

内存消耗 :8MB, 在所有 Go 提交中击败了93.74%的用户
