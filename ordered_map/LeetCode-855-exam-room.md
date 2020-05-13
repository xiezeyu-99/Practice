# LeetCode-855-exam-room

> 题目链接

[LeetCode-855-exam-room](https://leetcode-cn.com/problems/exam-room/)

> 思路

用链表保存入场的考生，当新考生入场时，初始化最大距离为链表第一个元素的值（如果第一个是0，那它会被后面的值替代，如果第一个不是0，则它到前一个位置也就是0位置的距离等于它本身），遍历链表，找到

最长的间隔。如果最后一个位置没人时，会遍历不到这个点，所以结束遍历后要计算一下链表最后一个位置到考场最后一个位置的距离，如果大于遍历时

的最大距离，则把考生安排到最后一个位置。

> 代码

```go

type ExamRoom struct {
    seat  *list.List
    count int
}
 
func Constructor(N int) ExamRoom {
    return ExamRoom{
        seat:  list.New(),
        count: N - 1,
    }
}
 
func (this *ExamRoom) Seat() int {
    if this.seat.Len() == 0 {
        this.seat.PushFront(0)
        return 0
    }
 
    insertNode := this.seat.Front()
    maxDis := insertNode.Value.(int)
    preVal := maxDis
    insertValue := 0
 
    for node := insertNode.Next(); node != nil; node = node.Next() {
        val := node.Value.(int)
        distance := (val - preVal) / 2
        if distance > maxDis {
            maxDis = distance
            insertNode = node
            insertValue = preVal + distance
        }
        preVal = val
    }
 
    lastDis := this.count - preVal
    if lastDis > maxDis {
        this.seat.PushBack(this.count)
        return this.count
    } else {
        this.seat.InsertBefore(insertValue, insertNode)
        return insertValue
    }
}
 
func (this *ExamRoom) Leave(p int) {
    for node := this.seat.Front(); node != nil; node = node.Next() {
        if node.Value.(int) == p {
            this.seat.Remove(node)
            break
        }
    }
}
```

> 复杂度分析

时间复杂度：入场和出场都是O(n)

空间复杂度：O(n)

> 总结

执行用时 :8ms, 在所有 Go 提交中击败了100.00%的用户
内存消耗 :6.1 MB, 在所有 Go 提交中击败了100.00%的用户

