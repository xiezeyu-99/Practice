# LeetCode-面试题03.04

>题目链接

[LeetCode-面试题03.04](https://leetcode-cn.com/problems/implement-queue-using-stacks-lcci/)

> 思路


>代码

```go

type MyQueue struct {
    inStack,outStack []int
}


/** Initialize your data structure here. */
func Constructor() MyQueue {
    return MyQueue{
        inStack:[]int{},
        outStack:[]int{},
    }
}


/** Push element x to the back of queue. */
func (this *MyQueue) Push(x int)  {
    this.inStack = append(this.inStack, x)
}


/** Removes the element from in front of queue and returns that element. */
func (this *MyQueue) Pop() int {
    if len(this.outStack) == 0{
        for len(this.inStack) > 0 {
            this.outStack = append(this.outStack, this.inStack[len(this.inStack)-1])
            this.inStack = this.inStack[:len(this.inStack)-1]
        }
    }
    data := this.outStack[len(this.outStack)-1]
    this.outStack = this.outStack[:len(this.outStack)-1]
    return data
}


/** Get the front element. */
func (this *MyQueue) Peek() int {
    if len(this.outStack) > 0 {
        return this.outStack[len(this.outStack)-1]
    } else {
        return this.inStack[0]
    }
}


/** Returns whether the queue is empty. */
func (this *MyQueue) Empty() bool {
    return len(this.outStack)==0&&len(this.inStack)==0
}


/**
 * Your MyQueue object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Push(x);
 * param_2 := obj.Pop();
 * param_3 := obj.Peek();
 * param_4 := obj.Empty();
 */
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了94.74%的用户
