# LeetCode-134-gas-station

> 题目链接

[LeetCode-134-gas-station](https://leetcode-cn.com/problems/gas-station/)

> 思路

一次遍历，计算总里程和总油量，最后里程大于油量的肯定无法完成路程

遍历过程中，假设一个出发点，然后计算从该点出发到达每一个点的剩余油量，如果剩余油量小于0，就把出发点前移并且剩余油量置零。如果总油量大于总里程，则肯定存在符合条件的出发点

> 代码

```go

func canCompleteCircuit(gas []int, cost []int) int {
    rest, sumCost, sumGas, start := 0, 0, 0, 0
    for i := 0; i < len(gas); i++ {
        sumCost += cost[i]
        sumGas += gas[i]
        rest = rest + gas[i] - cost[i]
        if rest < 0 {
            start = i + 1
            rest = 0
        }
    }
    if sumCost > sumGas {
        return -1
    }
    return start
}


```

> 复杂度分析

时间复杂度：O(n)

空间复杂度： O(1)


> 总结

执行用时 :4 ms, 在所有 Go 提交中击败了94.98%的用户

内存消耗 :2.9 MB, 在所有 Go 提交中击败了94.00%的用户

