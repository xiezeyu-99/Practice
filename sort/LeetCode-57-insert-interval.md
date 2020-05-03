# LeetCode-57-insert-interval

> 题目链接

[LeetCode-57-insert-interval](https://leetcode-cn.com/problems/insert-interval/)

> 思路

遍历区间列表，如果：

1.插入空间左边界大于当前区间右边界，则把当前区间放入结果集，如果已经遍历到最后一个区间，则把插入区间也放入结果集最后，退出循环

2.插入空间右边界小于当前区间左边界，则把插入区间放入结果集，后面在接上区间列表的剩余所有区间，退出循环

3.剩下的情况就是插入区间与当前区间有重叠的，取最小左边界为合并区间左边界，最大右边界为合并区间右边界，继续遍历区间列表，更新合并区间的右边界，直到插入区间与当前遍历区间不再重叠为止，把合并区间放入结果集，后面再接上区间列表的剩余区间，退出循环


> 代码

```go

func insert(intervals [][]int, newInterval []int) [][]int {
    if len(intervals) == 0{
        return [][]int{newInterval}
    }
    i:=0
    result:=[][]int{}
    for i<=len(intervals)-1{
        if newInterval[0] > intervals[i][1]{
            result = append(result,intervals[i])
            if i==len(intervals)-1{
                result = append(result,newInterval)
                break
            } else {
                i++
            }
        } else if newInterval[1] < intervals[i][0]{
            result = append(result,newInterval)
            result = append(result,intervals[i:]...)
            break
        } else {
            head:=min(newInterval[0],intervals[i][0])
            tail:=max(newInterval[1],intervals[i][1])
            j:=i+1
            for j<=len(intervals)-1&&tail>=intervals[j][0] {
                if tail< intervals[j][1]{
                    tail = intervals[j][1]
                }
                j++
            }
            result = append(result,[]int{head,tail})
            result = append(result,intervals[j:]...)
            break
        }
    }
    return result
}

func max(i,j int) int{
    if i>=j{
        return i
    } else {
        return j
    }
}


func min(i,j int) int{
    if i>=j{
        return j
    } else {
        return i
    }
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

> 总结

执行用时 :8 ms, 在所有 Go 提交中击败了90.29%的用户
内存消耗 :4.7 MB, 在所有 Go 提交中击败了100.00%的用户

