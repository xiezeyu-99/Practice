# LeetCode-622-design-circular-queue

> 题目链接

[LeetCode-622-design-circular-queue](https://leetcode-cn.com/problems/design-circular-queue/)

> 思路

队列需要一个切片用来保存数据，一个头指针一个尾指针，一个cap保存队列容量，一个lenght保存当前队列长度。关键在于头尾指针往后移，移到切片末尾时，要重新回到切片的0下标处，即pos = (pos + 1) % cap

> 代码

```go

type MyCircularQueue struct {
    data   []int
    head   int
    tail   int
    cap    int
    length int
}

func Constructor(k int) MyCircularQueue {
    return MyCircularQueue{
        data:   make([]int, k, k),
        head:   0,
        tail:   0,
        cap:    k,
        length: 0,
    }
}

func (this *MyCircularQueue) EnQueue(value int) bool {
    if this.IsFull() {
        return false
    } else {
        this.data[this.tail] = value
        this.tail = (this.tail + 1) % this.cap
        this.length++
        return true
    }
}

func (this *MyCircularQueue) DeQueue() bool {
    if this.IsEmpty() {
        return false
    } else {
        this.head = (this.head + 1) % this.cap
        this.length--
        return true
    }
}

func (this *MyCircularQueue) Front() int {
    if this.IsEmpty() {
        return -1
    } else {
        return this.data[this.head]
    }
}

func (this *MyCircularQueue) Rear() int {
    if this.IsEmpty() {
        return -1
    } else {
        if this.tail == 0 {
            return this.data[this.cap-1]
        } else {
            return this.data[this.tail-1]
        }

    }
}

func (this *MyCircularQueue) IsEmpty() bool {
    return this.length == 0
}

func (this *MyCircularQueue) IsFull() bool {
    return this.cap == this.length
}

```

> 复杂度分析

时间复杂度：每个方法都是O(1)

空间复杂度O(n)

> 总结

执行用时 :12 ms, 在所有 Go 提交中击败了98.31%的用户

内存消耗 :6.3 MB, 在所有 Go 提交中击败了66.67%的用户

