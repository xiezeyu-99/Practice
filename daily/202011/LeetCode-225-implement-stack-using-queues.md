#  LeetCode-225-implement-stack-using-queues

>题目链接

[LeetCode-225-implement-stack-using-queues](https://leetcode-cn.com/problems/implement-stack-using-queues/)

>思路

用数组

>代码

```go

type MyStack struct {
    data []int
}

/** Initialize your data structure here. */
func Constructor() MyStack {
    return MyStack{
        data: []int{},
    }
}

/** Push element x onto stack. */
func (this *MyStack) Push(x int) {
    this.data = append(this.data, x)
}

/** Removes the element on top of the stack and returns that element. */
func (this *MyStack) Pop() int {
    data := this.Top()
    this.data = this.data[:len(this.data)-1]
    return data
}

/** Get the top element. */
func (this *MyStack) Top() int {
    return this.data[len(this.data)-1]
}

/** Returns whether the stack is empty. */
func (this *MyStack) Empty() bool {
    if len(this.data)==0 {
        return true
    } else{
        return false
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Push(x);
 * param_2 := obj.Pop();
 * param_3 := obj.Top();
 * param_4 := obj.Empty();
 */

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了64.96%的用户
