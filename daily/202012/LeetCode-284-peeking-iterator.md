#  LeetCode-284-peeking-iterator

>题目链接

[LeetCode-284-peeking-iterator](https://leetcode-cn.com/problems/peeking-iterator/)

>思路

用变量提前存储next和hasNext的值，这样实现peek时就不会导致原数据改变

>代码

```go

/*   Below is the interface for Iterator, which is already defined for you.
 *
 *   type Iterator struct {
 *       
 *   }
 *
 *   func (this *Iterator) hasNext() bool {
 *      // Returns true if the iteration has more elements.
 *   }
 *
 *   func (this *Iterator) next() int {
 *      // Returns the next element in the iteration.
 *   }
 */

type PeekingIterator struct {
    iter *Iterator
    current int
    hasN bool
}

func Constructor(iter *Iterator) *PeekingIterator {
    next:=iter.hasNext()
    return &PeekingIterator{
        iter:iter,
        current:iter.next(),
        hasN:next,
    }
}

func (this *PeekingIterator) hasNext() bool {
    return this.hasN
}

func (this *PeekingIterator) next() int {
    res:=this.current
    this.hasN = this.iter.hasNext()
    this.current = this.iter.next() 
    return res
}

func (this *PeekingIterator) peek() int {
    return this.current
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.5MB, 在所有 Go 提交中击败了90.63%的用户
