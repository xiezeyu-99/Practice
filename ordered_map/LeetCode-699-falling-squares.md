# LeetCode-699-falling-squares

>题目链接

[LeetCode-699-falling-squares](https://leetcode-cn.com/problems/falling-squares/)

>思路

用一个结构体记录已落下的方块每个分段的长度和高度，遍历方块，判断相交的情况，调整结构体

>代码

```go

type squares struct {
    start int
    end int
    height int
}
func fallingSquares(positions [][]int) []int {
    data:=[]squares{}
    data=append(data,squares{positions[0][0],positions[0][0]+positions[0][1]-1,positions[0][1]})
    result:=[]int{positions[0][1]}
    maxHeitht:=positions[0][1]
    for i:=1;i<=len(positions)-1;i++{
        posStart:=positions[i][0]
        posEnd:=positions[i][0]+positions[i][1]-1
        posHeith:=positions[i][1]
        curHeitht:=0
        for j := 0; j <= len(data)-1; j++ {
            if data[j].start<=posEnd && data[j].end >= posStart {
                if data[j].height > curHeitht {
                    curHeitht = data[j].height
                }
                if posStart > data[j].start && posEnd > data[j].end {
                    data[j].end = posStart-1
                } else if posStart<=data[j].start&&posEnd >=  data[j].end {
                    data = append(data[:j],data[j+1:]...)
                    j--//因为删除了一个元素，所以j--以使元素能够完全遍历
                } else if posStart > data[j].start && posEnd < data[j].end {
                    data = append(data,squares{posEnd+1,data[j].end,data[j].height})
                    data[j].end = posStart-1
                } else {
                    data[j].start = posEnd+1
                }
            }
        }
        posHeith = curHeitht+posHeith
        if posHeith > maxHeitht {
            maxHeitht = posHeith
        }
        result = append(result,maxHeitht)
        data = append(data,squares{posStart,posEnd,posHeith})
    }
    return result
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了83.33%的用户

内存消耗 :5.4MB, 在所有 Go 提交中击败了100.00%的用户
