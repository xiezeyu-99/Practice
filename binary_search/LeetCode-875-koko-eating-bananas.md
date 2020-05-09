# LeetCode-875-koko-eating-bananas

> 题目链接

[LeetCode-875-koko-eating-bananas](https://leetcode-cn.com/problems/koko-eating-bananas/)

> 思路

找出吃蕉速度的上下限，然后二分法找到吃完的最小速度

> 代码

```go

func minEatingSpeed(piles []int, H int) int {
    max := 1
    total := 0
    for _, v := range piles {
        total += v
        if v > max {
            max = v
        }
    }
    start := int(math.Max(float64(total/H), float64(1)))
    end := max
    for start <= end {
        mid := (end-start)>>1 + start
        ok := isFinish(piles, mid, H)
        if ok {
            if ok = isFinish(piles, mid-1, H); mid != 1 && ok {
                end = mid - 1
            } else {
                return mid
            }
        } else {
            start = mid + 1
        }
    }
    return -1
}
 
func isFinish(piles []int, K, H int) bool {
    time := 0
    for _, v := range piles {
        time += int(math.Ceil(float64(v) / float64(K)))
    }
    if time <= H {
        return true
    } else {
        return false
    }
}

```

> 复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(1)

> 总结

执行用时 :28 ms, 在所有 Go 提交中击败了100.00%的用户
内存消耗 :6.4 MB, 在所有 Go 提交中击败了100.00%的用户

