# LeetCode-406-queue-reconstruction-by-height

>题目链接

[LeetCode-406-queue-reconstruction-by-height](https://leetcode-cn.com/problems/queue-reconstruction-by-height/)

>思路

按身高升序排列，前面的人无论放哪里都不会对后面的人造成影响，所以可以先安排位置。又因为先安排的是矮的人，所以前面有多少个空位，就等于有多少个人比它高。

对于相同身高的人，肯定k大的人站在后面，k小的人就可以间接的认为比k大的人高一点点，排序的时候放在后面

>代码

```go

func reconstructQueue(people [][]int) [][]int {
    sort.Slice(people, func(i, j int) bool {
        a, b := people[i], people[j]
        return a[0] < b[0] || (a[0] == b[0] && a[1] > b[1])
    })
    ans := make([][]int, len(people))

    for i := 0; i < len(people); i++ {
        space := people[i][1] + 1
        for j := 0; j < len(ans); j++ {
            if ans[j] == nil {
                space--
                if space == 0 {
                    ans[j] = people[i]
                    break
                }
            }
        }
    }
    return ans
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :20ms, 在所有 Go 提交中击败了74.93%的用户

内存消耗 :6.2MB, 在所有 Go 提交中击败了57.27%的用户
