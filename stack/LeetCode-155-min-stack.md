# LeetCode-155-min-stack

>题目链接

[LeetCode-155-min-stack](https://leetcode-cn.com/problems/min-stack/)

>思路

1.栈中保存两个切片，一个存数据，一个存最小值

2.入栈时，如果入栈的值小于或等于最小值切片的最后一个值，则把入栈的数据也添加到最小值切片后面

3.出栈时，如果出栈的数和最小值切片最后面的数相等，则同时也要把最小值切片最后一个数删除


>代码

```go
type MinStack struct {
    data []int
    mini []int
}


/** initialize your data structure here. */
func Constructor() MinStack {
    return MinStack{
        data:[]int{},
        mini:[]int{},
    }
}


func (this *MinStack) Push(x int)  {
    if len(this.mini) == 0 || this.mini[len(this.mini)-1] >= x{
        this.mini = append(this.mini, x) 
    }
    this.data = append(this.data, x) 
}


func (this *MinStack) Pop()  {
    if len(this.data) > 0 {
        if this.data[len(this.data)-1] == this.mini[len(this.mini)-1] {
            this.mini = this.mini[:len(this.mini)-1]
        }
        this.data = this.data[:len(this.data)-1]
    }       
}


func (this *MinStack) Top() int {
    if len(this.data) > 0 {
        return this.data[len(this.data)-1]
    } else {
        return 0
    }
}


func (this *MinStack) GetMin() int {
    if len(this.mini) > 0 {
        return this.mini[len(this.mini)-1]
    } else {
        return 0
    }
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

时间复杂度：每个方法都是O(1)

空间复杂度：用了两个切片，空间复杂度O(n)

>总结


执行用时 :16 ms, 在所有 Go 提交中击败了 97.73%的用户

内存消耗 :7.5 MB, 在所有 Go 提交中击败了69.77%的用户
