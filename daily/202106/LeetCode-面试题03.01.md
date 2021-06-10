# LeetCode-面试题03.01

>题目链接

[LeetCode-面试题03.01](https://leetcode-cn.com/problems/three-in-one-lcci/)

> 思路


>代码

```go

type TripleInOne struct {
    data []int
    stackPos [3]int
}


func Constructor(stackSize int) TripleInOne {
    return TripleInOne {
        data:make([]int, stackSize*3),
        stackPos:[3]int{0,stackSize,stackSize*2},
    }
}


func (this *TripleInOne) Push(stackNum int, value int)  {
    if this.stackPos[stackNum] == len(this.data)/3*(stackNum+1)  {    
        return
    } 
    this.data[this.stackPos[stackNum]] = value
    this.stackPos[stackNum]++    
}


func (this *TripleInOne) Pop(stackNum int) int {
    if !this.IsEmpty(stackNum) { 
        data := this.data[this.stackPos[stackNum]-1] 
        this.stackPos[stackNum]--           
        return data
    } else {
        return -1
    }
}


func (this *TripleInOne) Peek(stackNum int) int {
    if !this.IsEmpty(stackNum) {              
        return this.data[this.stackPos[stackNum]-1] 
    } else {
        return -1
    }
}


func (this *TripleInOne) IsEmpty(stackNum int) bool {
    return  this.stackPos[stackNum] == len(this.data)/3*stackNum 
}


/**
 * Your TripleInOne object will be instantiated and called as such:
 * obj := Constructor(stackSize);
 * obj.Push(stackNum,value);
 * param_2 := obj.Pop(stackNum);
 * param_3 := obj.Peek(stackNum);
 * param_4 := obj.IsEmpty(stackNum);
 */

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :92ms, 在所有 Go 提交中击败了54.17%的用户

内存消耗 :10.7MB, 在所有 Go 提交中击败了37.50%的用户
