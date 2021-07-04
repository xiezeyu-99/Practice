# LeetCode-面试题08.04

>题目链接

[LeetCode-面试题08.04](https://leetcode-cn.com/problems/power-set-lcci/)

> 思路


>代码

```go

func subsets(nums []int) [][]int {
    ans:=[][]int{}
    var f func(n int,cur []int)

    f = func(n int,cur []int){
        if n == len(nums) {
            temp:=make([]int, len(cur))
            copy(temp, cur)
            ans = append(ans, temp)
            return
        }
        f(n+1,append(cur,nums[n]))
        f(n+1,cur)
    }
    f(0, []int{})
    return ans
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.3MB, 在所有 Go 提交中击败了44.94%的用户
