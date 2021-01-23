#  LeetCode-332-reconstruct-itinerary

>题目链接

[LeetCode-332-reconstruct-itinerary](https://leetcode-cn.com/problems/reconstruct-itinerary/)

>思路

欧拉通路

>代码

```go

func findItinerary(tickets [][]string) []string {
    var (
        m  = map[string][]string{}
        res []string
    )
    
    for _, ticket := range tickets {
        src, dst := ticket[0], ticket[1]
        m[src] = append(m[src], dst)
    }
    for key := range m {
        sort.Strings(m[key])
    }

    var dfs func(curr string)
    dfs = func(curr string) {
        for {
            if v, ok := m[curr]; !ok || len(v) == 0 {
                break
            }
            tmp := m[curr][0]
            m[curr] = m[curr][1:]
            dfs(tmp)
        }
        res = append(res, curr)
    }

    dfs("JFK")
    for i := 0; i < len(res)/2; i++ {
        res[i], res[len(res) - 1 - i] = res[len(res) - 1 - i], res[i]
    }
    return res
}


```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :6MB, 在所有 Go 提交中击败了69.86%的用户
