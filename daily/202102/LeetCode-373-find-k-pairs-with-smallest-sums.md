#  LeetCode-373-find-k-pairs-with-smallest-sums

>题目链接

[LeetCode-373-find-k-pairs-with-smallest-sums](hhttps://leetcode-cn.com/problems/find-k-pairs-with-smallest-sums/)

>思路

小顶堆

>代码



```go


func kSmallestPairs(nums1 []int, nums2 []int, k int) [][]int {
    h := IntHeap{}
    if len(nums2) == 0 || len(nums1) == 0{
        return [][]int{}
    }
    //init
    for i := 0; i < len(nums1); i++ {
        for j := 0; j < len(nums2); j++ {
            curList := []int{nums1[i], nums2[j]}
            heap.Push(&h, curList)
        }
    }
    res := [][]int{}
    for k > 0 {
        if len(h) == 0 {
            return res
        }
        u := heap.Pop(&h).([]int)
        res = append(res, u)
        k--
    }
    return res
}

type IntHeap [][]int

func (h IntHeap) Len() int            { return len(h) }
func (h IntHeap) Less(i, j int) bool  { return h[i][0] + h[i][1] < h[j][0] + h[j][1] }
func (h IntHeap) Swap(i, j int) { h[i], h[j] = h[j], h[i]}
func (h *IntHeap) Push(x interface{}) { *h = append(*h, x.([]int)) }
func (h *IntHeap) Pop() interface{} {
    res := (*h)[len(*h)-1]
    *h = (*h)[:len(*h)-1]
    return res
}



```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(n)

>总结

执行用时 :236ms, 在所有 Go 提交中击败了26.15%的用户
 
内存消耗 :42.5MB, 在所有 Go 提交中击败了12.90%的用户
