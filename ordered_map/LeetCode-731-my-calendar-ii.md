# LeetCode-731-my-calendar-ii

>题目链接

[LeetCode-731-my-calendar-ii](https://leetcode-cn.com/problems/my-calendar-ii/)

>思路

结构体中有两个切片，分别保存日程安排，以及日程安排中的二重预定部分。新的日程安排进来，先和二重预定切片对比，如果有重叠，则是三重预定，返回false，如果没有重叠，就和日程安排切片对比，把重叠的部分放入二重预定切片

>代码

```go

type MyCalendarTwo struct {
    calendar [][]int
    overlaps [][]int
}

func Constructor() MyCalendarTwo {
    return MyCalendarTwo{}
}

func (this *MyCalendarTwo) Book(start int, end int) bool {
    for _,v:=range this.overlaps{
        if start<v[1] && end>v[0] {
            return false
        }
    }
    for _, v := range this.calendar {
        if start<v[1] && end>v[0] {
            this.overlaps = append(this.overlaps,[]int{max(start,v[0]),min(end,v[1])})
        }
    }
    this.calendar = append(this.calendar,[]int{start,end})
    return true
}
func max (i,j int) int{
    if i>=j{
        return i
    } else {
        return j
    }
}
func min (i,j int) int{
    if i>=j{
        return j
    } else {
        return i
    }
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :88 ms, 在所有 Go 提交中击败了 88.46%的用户

内存消耗 :6.7 MB, 在所有 Go 提交中击败了100.00%的用户
