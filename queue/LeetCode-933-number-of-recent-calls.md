# LeetCode-933-number-of-recent-calls

>题目链接

[LeetCode-933-number-of-recent-calls](https://leetcode-cn.com/problems/number-of-recent-calls/)

>思路

来一个ping，就把时间放进队列，并把时间在t-3000之前的数据出列，返回剩余队列的长度

>代码

```go

type RecentCounter struct {
    queue []int
}


func Constructor() RecentCounter {
    recentCounter := RecentCounter{queue:[]int{}}
    return recentCounter
}


func (this *RecentCounter) Ping(t int) int {
    this.queue = append(this.queue, t)

    if t<=3001 {
        return len(this.queue)
    }

    for len(this.queue)>0&&this.queue[0]<t-3000{
        this.queue = this.queue[1:]
    }
    return len(this.queue)
}


/**
 * Your RecentCounter object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Ping(t);
 */

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :144 ms, 在所有 Go 提交中击败了 81.440%的用户

内存消耗 :8.2 MB, 在所有 Go 提交中击败了100.00%的用户
