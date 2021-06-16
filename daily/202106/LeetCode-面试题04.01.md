# LeetCode-面试题04.01

>题目链接

[LeetCode-面试题04.01](https://leetcode-cn.com/problems/route-between-nodes-lcci/)

> 思路


>代码

```go

func findWhetherExistsPath(n int, graph [][]int, start int, target int) bool {
    mapGraph := make(map[int][]int)
    for _,v:=range graph {
        mapGraph[v[0]] = append(mapGraph[v[0]], v[1])
    }
    status:=make(map[int]bool)
    queue:=[]int{start}

    for len(queue) > 0 {
        node:=queue[0]
        if node == target {
            return true
        }
        queue = queue[1:]
        if status[node] {
            continue
        }
        status[node] = true
        queue = append(queue, mapGraph[node]...)
    }
    return false
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :196ms, 在所有 Go 提交中击败了68.60%的用户

内存消耗 :20.8MB, 在所有 Go 提交中击败了75.58%的用户
