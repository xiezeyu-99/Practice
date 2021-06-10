# LeetCode-面试题03.01

>题目链接

[LeetCode-面试题03.01](https://leetcode-cn.com/problems/three-in-one-lcci/)

> 思路


>代码

```go

type TripleInOne struct {
    Stacks [3]Stack
}

type Stack struct {
    Data []int
    Cap int
}

func Constructor(stackSize int) TripleInOne {
    return TripleInOne {
        Stacks:[3]Stack{
            Stack{
                Data:[]int{},
                Cap:stackSize,
            },
            Stack{
                Data:[]int{},
                Cap:stackSize,
            },
            Stack{
                Data:[]int{},
                Cap:stackSize,
            },
        },
    }
}


func (this *TripleInOne) Push(stackNum int, value int)  {
    if this.Stacks[stackNum].Cap > len(this.Stacks[stackNum].Data) {
        this.Stacks[stackNum].Data = append(this.Stacks[stackNum].Data, value)
    }
    
}


func (this *TripleInOne) Pop(stackNum int) int {
    if !this.IsEmpty(stackNum) { 
        data := this.Stacks[stackNum].Data[len(this.Stacks[stackNum].Data)-1] 
        this.Stacks[stackNum].Data = this.Stacks[stackNum].Data[:len(this.Stacks[stackNum].Data)-1]            
        return data
    } else {
        return -1
    }
}


func (this *TripleInOne) Peek(stackNum int) int {
    if !this.IsEmpty(stackNum) {              
        return this.Stacks[stackNum].Data[len(this.Stacks[stackNum].Data)-1] 
    } else {
        return -1
    }
}


func (this *TripleInOne) IsEmpty(stackNum int) bool {
    return len(this.Stacks[stackNum].Data) == 0
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

空间复杂度：O(1)

>总结

执行用时 :92ms, 在所有 Go 提交中击败了54.17%的用户

内存消耗 :10.7MB, 在所有 Go 提交中击败了37.50%的用户
