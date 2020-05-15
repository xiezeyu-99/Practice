# LeetCode-352-data-stream-as-disjoint-intervals

>题目链接

[LeetCode-352-data-stream-as-disjoint-intervals](https://leetcode-cn.com/problems/data-stream-as-disjoint-intervals/)

>思路

二分法查找插入点，如果找到相交的区间，则合并，合并后再考察左右的区间是否会变成相交，如果相交，则把左右区间也合并。如果找不到相交的区间，则在mid处，考察应该插入左边还
是右边

>代码

```go

type SummaryRanges struct {
    data [][]int
}


/** Initialize your data structure here. */
func Constructor() SummaryRanges {
    return SummaryRanges{}
}


func (this *SummaryRanges) AddNum(val int)  {
    cur:=[]int{val,val}
    if len(this.data) == 0{
        this.data = append(this.data,cur)
    }
    mid:=0

    start,end:=0,len(this.data)-1
    for start<=end{
        mid=(end-start)>>1+start
        if this.data[mid][1]+1 < cur[0] {
            start = mid+1
        } else if this.data[mid][0]-1 >cur[1]{
            end = mid-1
        }  else if this.data[mid][0]-1 <= cur[1] && this.data[mid][1]+1 >= cur[0] {
            this.data[mid][0]=min(this.data[mid][0],cur[0])
            this.data[mid][1]=max(this.data[mid][1],cur[1])
            mergeLeft,mergeRight:=false,false
            if mid != len(this.data)-1 && this.data[mid][1] + 1 >= this.data[mid+1][0] {//合并右区间
                this.data[mid][1] = this.data[mid+1][1]
                mergeRight=true
            }
            if mid!=0 && this.data[mid][0] - 1 <= this.data[mid-1][1] {//合并左区间
                this.data[mid][0] = this.data[mid-1][0]
                mergeLeft=true
            }

            if mergeLeft {
                this.data = append(this.data[:mid-1],this.data[mid:]...)
            }
            if mergeRight {
                if mid+2 <= len(this.data)-1{
                    this.data = append(this.data[:mid+1],this.data[mid+2:]...)
                } else {
                    this.data = this.data[:mid+1]
                }
            }
            return
        }
    }


    var insert int
    if this.data[mid][0]-1 >cur[1] {//插入左边
        insert = mid
    } else {//插入右边
        insert = mid+1
    }
    temp:=[][]int{}
    temp=append(append(temp,cur),this.data[insert:]...)
    this.data = append(this.data[:insert],temp...)
}

func (this *SummaryRanges) GetIntervals() [][]int {
    return this.data
}

func max(i,j int)int {
    if i>j{
        return i
    } else {
        return j
    }
}

func min(i,j int)int {
    if i>j{
        return j
    } else {
        return i
    }
}

```

>复杂度分析

时间复杂度：查找O(logn)+插入合并O(n)

空间复杂度：O(n)

>总结

执行用时 :36ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :9.3 MB, 在所有 Go 提交中击败了100.00%的用户
