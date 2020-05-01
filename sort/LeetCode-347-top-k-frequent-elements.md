# LeetCode-347-top-k-frequent-elements

>题目链接

[LeetCode-347-top-k-frequent-elements](https://leetcode-cn.com/problems/top-k-frequent-elements/)

>思路

1.用一个map记下每个元素出现的次数，然后把次数存进切片中，对切片进行排序

2.切片排好序之后，记下频率第k高的次数

3.遍历map，把次数大于等于第K高次数的的元素放入结果集中

>代码

```go

func topKFrequent(nums []int, k int) []int {
    count:=make(map[int]int,len(nums)-1)
    for _, v := range nums {
        count[v]++
    }
    sortSlice:=[]int{}
    for _, v := range count {
        sortSlice = append(sortSlice,v)
    }
    sort.Ints(sortSlice)

    preCount:=sortSlice[len(sortSlice)-k]
    result:=[]int{}

    for i,v:=range count{
        if v>=preCount {
            result=append(result,i)
        }
    }
    return result
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(n)

>总结

执行用时 :12 ms, 在所有 Go 提交中击败了 97.03%的用户

内存消耗 :6.8 MB, 在所有 Go 提交中击败了12.5%的用户
