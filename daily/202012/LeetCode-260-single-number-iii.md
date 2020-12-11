#  LeetCode-260-single-number-iii

>题目链接

[LeetCode-260-single-number-iii](https://leetcode-cn.com/problems/single-number-iii/)

>思路

map

>代码

```go

func singleNumber(nums []int) []int {
    count:=make(map[int]int)

    for _,v:=range nums{
        count[v] ++ 
    }
    res:=[]int{}
    for i,v:=range count{
        if v==1 {
            res = append(res,i)
        }
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了85.00%的用户
 
内存消耗 :4.8MB, 在所有 Go 提交中击败了11.17%的用户
