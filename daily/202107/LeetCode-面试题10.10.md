# LeetCode-面试题10.10

>题目链接

[LeetCode-面试题10.10](https://leetcode-cn.com/problems/rank-from-stream-lcci/)

> 思路

>代码

```go

type StreamRank struct {
    num []int
}


func Constructor() StreamRank {
    return StreamRank{[]int{}}
}


func (this *StreamRank) Track(x int)  {
    this.num=append(this.num,x)
}


func (this *StreamRank) GetRankOfNumber(x int) int {
    var ans int
    for _,i:=range this.num {
        if i<=x {
            ans++
        }
    }
    return ans
}


/**
 * Your StreamRank object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Track(x);
 * param_2 := obj.GetRankOfNumber(x);
 */

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
