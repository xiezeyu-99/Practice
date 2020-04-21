# LeetCode-641-design-circular-deque

> 题目链接

[LeetCode-641-design-circular-deque](https://leetcode-cn.com/problems/design-circular-deque/)

> 思路

用一个双向链表保存数据，双向链表中有一个虚拟的头和尾节点，方便进行操作

> 代码

```go

type MyCircularDeque struct {
	head   *Node //虚拟头
	tail   *Node //倒数第二个值
	length int
	cap    int
}

type Node struct {
	data int
	next *Node
	pre  *Node
}

func Constructor(k int) MyCircularDeque {
	head := Node{
		data: -1,
		next: nil,
		pre:  nil,
	}
	tail := Node{
		data: -1,
		next: nil,
		pre:  nil,
	}
	head.next = &tail
	tail.pre = &head

	deque := MyCircularDeque{
		head:   &head,
		tail:   &tail,
		cap:    k,
		length: 0,
	}

	return deque
}

func (this *MyCircularDeque) InsertFront(value int) bool {
	if this.IsFull() {
		return false
	}

	newNode := Node{
		data: value,
		pre:  this.head,
		next: this.head.next,
	}

	this.length++
	this.head.next = &newNode
	newNode.next.pre = &newNode

	return true
}

func (this *MyCircularDeque) InsertLast(value int) bool {
	if this.IsFull() {
		return false
	}

	this.length++
	newNode := Node{
		data: value,
		next: this.tail,
		pre:  this.tail.pre,
	}

	preNode := this.tail.pre
	this.tail.pre = &newNode
	preNode.next = &newNode

	return true
}

func (this *MyCircularDeque) DeleteFront() bool {
	if this.IsEmpty() {
		return false
	}
	this.length--
	nextNode := this.head.next
	this.head.next = this.head.next.next
	this.head.next.pre = this.head
	nextNode.next = nil
	nextNode.pre = nil
	return true
}

func (this *MyCircularDeque) DeleteLast() bool {
	if this.IsEmpty() {
		return false
	}
	this.length--

	preNode := this.tail.pre
	this.tail.pre = this.tail.pre.pre
	this.tail.pre.next = this.tail
	preNode.next = nil
	preNode.pre = nil

	return true
}

func (this *MyCircularDeque) GetFront() int {
	return this.head.next.data
}

func (this *MyCircularDeque) GetRear() int {
	return this.tail.pre.data
}

func (this *MyCircularDeque) IsEmpty() bool {
	if this.length == 0 {
		return true
	} else {
		return false
	}
}

func (this *MyCircularDeque) IsFull() bool {
	if this.cap == this.length {
		return true
	} else {
		return false
	}
}

```

> 复杂度分析

时间复杂度O(1)

空间复杂度O(n)

> 总结

执行用时 :20 ms, 在所有 Go 提交中击败了63.85%的用户
内存消耗 :6.3 MB, 在所有 Go 提交中击败了100.00%的用户


