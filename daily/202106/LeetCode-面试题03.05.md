# LeetCode-面试题03.05

>题目链接

[LeetCode-面试题03.05(https://leetcode-cn.com/problems/sort-of-stacks-lcci/)

> 思路


>代码

```go

type SortedStack struct {
    stack []int
}


func Constructor() SortedStack {
    return SortedStack{
        stack:[]int{},
    }
}


func (this *SortedStack) Push(val int)  {

    temp:=[]int{}
    for !this.IsEmpty() && this.stack[len(this.stack)-1] < val {
        data:= this.stack[len(this.stack)-1]
        temp = append(temp, data)
        this.stack = this.stack[:len(this.stack)-1]
    }
    this.stack = append(this.stack, val)

    for i:=len(temp)-1;i>=0;i-- {
        this.stack = append(this.stack, temp[i])
    }
}


func (this *SortedStack) Pop()  {
    if !this.IsEmpty() {
        this.stack = this.stack[:len(this.stack)-1]
    }  
}


func (this *SortedStack) Peek() int {
    if this.IsEmpty() {
        return -1
    }
    return this.stack[len(this.stack)-1]

}


func (this *SortedStack) IsEmpty() bool {
    return len(this.stack) == 0
}


/**
 * Your SortedStack object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Push(val);
 * obj.Pop();
 * param_3 := obj.Peek();
 * param_4 := obj.IsEmpty();
 */
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :44ms, 在所有 Go 提交中击败了40.74%的用户

内存消耗 :10.4MB, 在所有 Go 提交中击败了18.52%的用户
