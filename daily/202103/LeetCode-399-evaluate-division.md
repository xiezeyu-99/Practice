#  LeetCode-399-evaluate-division

>题目链接

[LeetCode-399-evaluate-division](https://leetcode-cn.com/problems/evaluate-division/)

>思路



>代码

```go

func calcEquation(equations [][]string, values []float64, queries [][]string) []float64 {
    // 给方程组中的每个变量编号
    id := map[string]int{}
    for _, eq := range equations {
        a, b := eq[0], eq[1]
        if _, has := id[a]; !has {
            id[a] = len(id)
        }
        if _, has := id[b]; !has {
            id[b] = len(id)
        }
    }

    // 建图
    type edge struct {
        to     int
        weight float64
    }
    graph := make([][]edge, len(id))
    for i, eq := range equations {
        v, w := id[eq[0]], id[eq[1]]
        graph[v] = append(graph[v], edge{w, values[i]})
        graph[w] = append(graph[w], edge{v, 1 / values[i]})
    }

    bfs := func(start, end int) float64 {
        ratios := make([]float64, len(graph))
        ratios[start] = 1
        queue := []int{start}
        for len(queue) > 0 {
            v := queue[0]
            queue = queue[1:]
            if v == end {
                return ratios[v]
            }
            for _, e := range graph[v] {
                if w := e.to; ratios[w] == 0 {
                    ratios[w] = ratios[v] * e.weight
                    queue = append(queue, w)
                }
            }
        }
        return -1
    }

    ans := make([]float64, len(queries))
    for i, q := range queries {
        start, hasS := id[q[0]]
        end, hasE := id[q[1]]
        if !hasS || !hasE {
            ans[i] = -1
        } else {
            ans[i] = bfs(start, end)
        }
    }
    return ans
}

作者：LeetCode-Solution
链接：https://leetcode-cn.com/problems/evaluate-division/solution/chu-fa-qiu-zhi-by-leetcode-solution-8nxb/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.1MB, 在所有 Go 提交中击败了39.90%的用户
