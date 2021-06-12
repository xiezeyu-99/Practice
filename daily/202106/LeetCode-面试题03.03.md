# LeetCode-面试题03.03

>题目链接

[LeetCode-面试题03.03](https://leetcode-cn.com/problems/stack-of-plates-lcci/)

> 思路


>代码

```go

type StackOfPlates struct {
    stacks [][]int
    cap int
}


func Constructor(cap int) StackOfPlates {   
    return StackOfPlates{
        stacks:[][]int{},
        cap:cap,
    }
}


func (this *StackOfPlates) Push(val int)  {
    if this.cap == 0 {
        return
    }
    if len(this.stacks) == 0 {
        this.stacks = append(this.stacks, []int{val})
        return
    }
    curIndex := len(this.stacks)-1
    if len(this.stacks[curIndex]) == this.cap {
        this.stacks = append(this.stacks, []int{})   
        curIndex = len(this.stacks)-1   
    } 
    this.stacks[curIndex] = append(this.stacks[curIndex], val)
}


func (this *StackOfPlates) Pop() int {
    if len(this.stacks) == 0 {
        return -1
    }
    curIndex := len(this.stacks)-1
    data := this.stacks[curIndex][len(this.stacks[curIndex])-1]  
    this.stacks[curIndex] = this.stacks[curIndex][:len(this.stacks[curIndex])-1]

    if len(this.stacks[curIndex]) == 0 {
        this.stacks = this.stacks[:len(this.stacks)-1]
    }
    return data 
}


func (this *StackOfPlates) PopAt(index int) int {
    n := len(this.stacks)
    if index >= n {
        return -1
    }
    data := this.stacks[index][len(this.stacks[index])-1]
    this.stacks[index] = this.stacks[index][:len(this.stacks[index])-1]
    if len(this.stacks[index]) == 0 {
        this.stacks = append(this.stacks[:index], this.stacks[index+1:]...) 
    }
    return data
}


/**
 * Your StackOfPlates object will be instantiated and called as such:
 * obj := Constructor(cap);
 * obj.Push(val);
 * param_2 := obj.Pop();
 * param_3 := obj.PopAt(index);
 */

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(n)

>总结

执行用时 :56ms, 在所有 Go 提交中击败了70.00%的用户

内存消耗 :10.4MB, 在所有 Go 提交中击败了50.00%的用户
