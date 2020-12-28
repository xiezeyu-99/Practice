#  LeetCode-295-find-median-from-data-stream

>题目链接

[LeetCode-295-find-median-from-data-stream](https://leetcode-cn.com/problems/find-median-from-data-stream/)

>思路

两个堆

>代码

```go

type MedianFinder struct {
    minHeap *heapMin
    maxHeap *heapMin
}

/** initialize your data structure here. */
func Constructor() MedianFinder {
    return MedianFinder{
        minHeap: new(heapMin),
        maxHeap: new(heapMin),
    }
}

func (this *MedianFinder) AddNum(num int) {
    if this.minHeap.Len() > 0 && num > (*this.minHeap)[0] {
        heap.Push(this.minHeap, num)
    } else {
        heap.Push(this.maxHeap, -num)
    }

    if this.minHeap.Len()-this.maxHeap.Len() == 2 {
        heap.Push(this.maxHeap, -(heap.Pop(this.minHeap)).(int))
    } else if this.maxHeap.Len()-this.minHeap.Len() == 2 {
        heap.Push(this.minHeap, -(heap.Pop(this.maxHeap)).(int))
    }
}

func (this *MedianFinder) FindMedian() float64 {
    if this.minHeap.Len() > this.maxHeap.Len() {
        return float64((*this.minHeap)[0])
    } else if this.minHeap.Len() < this.maxHeap.Len() {
        return -float64((*this.maxHeap)[0])
    }
    return float64((*this.minHeap)[0]-(*this.maxHeap)[0]) / float64(2)
}

type heapMin []int

func (h heapMin) Len() int {
    return len(h)
}

func (h heapMin) Less(i, j int) bool {
    return h[i] < h[j]
}

func (h *heapMin) Push(x interface{}) {
    *h = append(*h, x.(int))
}

func (h *heapMin) Pop() interface{} {
    tmp := (*h)[len(*h)-1]
    *h = (*h)[:len(*h)-1]
    return tmp
}

func (h *heapMin) Swap(i, j int) {
    (*h)[i], (*h)[j] = (*h)[j], (*h)[i]
}

/**
 * Your MedianFinder object will be instantiated and called as such:
 * obj := Constructor();
 * obj.AddNum(num);
 * param_2 := obj.FindMedian();
 */


```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(n)

>总结

执行用时 :112ms, 在所有 Go 提交中击败了62.69%的用户
 
内存消耗 :114.8MB, 在所有 Go 提交中击败了26.46%的用户
