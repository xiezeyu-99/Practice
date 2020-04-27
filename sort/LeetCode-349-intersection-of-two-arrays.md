# LeetCode-349-intersection-of-two-arrays

>题目链接

[LeetCode-349-intersection-of-two-arrays](https://leetcode-cn.com/problems/intersection-of-two-arrays/)

>思路

用map记录下数组1中出现的元素，然后遍历数组2，找到数组2中同样存在的元素

>代码

```go

func intersection(nums1 []int, nums2 []int) []int {
    m:=make(map[int]int)

    for _, num := range nums1 {
        m[num]=1
    }

    res:=[]int{}
    for _,num:=range nums2{
        if _,ok:=m[num];ok {
            res = append(res,num)
            delete(m,num)
        }
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n*m)

空间复杂度：O(n)

>总结

执行用时 :4 ms, 在所有 Go 提交中击败了 90.08%的用户

内存消耗 :3.1 MB, 在所有 Go 提交中击败了100.00%的用户
