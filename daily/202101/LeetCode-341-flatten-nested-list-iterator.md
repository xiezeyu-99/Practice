# LeetCode-341-flatten-nested-list-iterator

>题目链接

[LeetCode-341-flatten-nested-list-iterator](https://leetcode-cn.com/problems/flatten-nested-list-iterator/)

>思路



>代码

```go

type NestedIterator struct {
    Data []*NestedInteger
}

func Constructor(nestedList []*NestedInteger) *NestedIterator {
    m := &NestedIterator{Data: nestedList}
    return m
}

func (this *NestedIterator) Next() int {
    v := this.Data[0]
    this.Data = this.Data[1:]
    return v.GetInteger()
}

func (this *NestedIterator) HasNext() bool {
    if len(this.Data) == 0 {
        return false
    }
    if this.Data[0].IsInteger() {
        return true
    }
    this.Data = append(this.Data[0].GetList(), this.Data[1:]...)
    return this.HasNext()
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了90.79%的用户
 
内存消耗 :5.4MB, 在所有 Go 提交中击败了78.95%的用户
