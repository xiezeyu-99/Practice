# LeetCode-232-implement-queue-using-stacks

>题目链接

[LeetCode-232-implement-queue-using-stacks](https://leetcode-cn.com/problems/implement-queue-using-stacks/)

>思路

无


>代码

```go
type MyQueue struct {
    queue []int
}


/** Initialize your data structure here. */
func Constructor() MyQueue {
    return MyQueue{}
}


/** Push element x to the back of queue. */
func (this *MyQueue) Push(x int)  {
    this.queue = append(this.queue,x)
}


/** Removes the element from in front of queue and returns that element. */
func (this *MyQueue) Pop() int {
    a:= this.queue[0]
    this.queue = this.queue[1:]
    return a
}


/** Get the front element. */
func (this *MyQueue) Peek() int {
    return this.queue[0]
}


/** Returns whether the queue is empty. */
func (this *MyQueue) Empty() bool {
    if len(this.queue) > 0{
        return false
    } else {
        return true
    }
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

时间复杂度：每个方法都是O(1)

空间复杂度：O(n)

>总结


执行用时 :2 ms, 在所有 Go 提交中击败了 100.00%的用户

内存消耗 :2 MB, 在所有 Go 提交中击败了100.00%的用户
