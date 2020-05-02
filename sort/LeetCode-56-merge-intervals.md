# LeetCode-56-merge-intervals

>题目链接

[LeetCode-56-merge-intervals](https://leetcode-cn.com/problems/merge-intervals/)

>思路

1,先对切片以左边界进行排序

2.排序后，区间一的左边界肯定小于等于区间二的左边界，要合并两个区间，只需要区间一的右边界大于等于区间二的左边界即可，合并后的新区间的左边界为区间一左边界，右边界为区间一和区间二的右边界中的较大值

>代码

```go

func merge(intervals [][]int) [][]int {
    sort.Slice(intervals, func(i, j int) bool {
        return intervals[i][0] < intervals[j][0]
    })

    i:=0
    result:=[][]int{}
    temp:=[]int{}
    for i<=len(intervals)-1{
        temp=intervals[i]
        j:=i+1
        for j<=len(intervals)-1&&temp[1]>=intervals[j][0] {
            if temp[1]< intervals[j][1]{
                temp[1] = intervals[j][1]
            }
            j++
        }
        result = append(result,temp)
        i=j
    }
    return result
}

```

>复杂度分析

时间复杂度：系统排序耗时O(nlogn)，遍历耗时O(n)，总的时间复杂度为O(nlogn)

空间复杂度：系统排序使用的是快排，原地排序，空间复杂度O(1)，额外使用一个只有两个元素的切片，所以总的空间复杂度为O(1)

>总结

执行用时 :8 ms, 在所有 Go 提交中击败了 98.33%的用户

内存消耗 :4.7 MB, 在所有 Go 提交中击败了100.00%的用户
