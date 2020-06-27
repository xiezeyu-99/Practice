# LeetCode-1125-smallest-sufficient-team

>题目链接

[LeetCode-1125-smallest-sufficient-team](https://leetcode-cn.com/problems/smallest-sufficient-team/)

>思路

这题太屌，没看懂，放弃，答案来自https://leetcode-cn.com/problems/smallest-sufficient-team/solution/wei-yun-suan-bei-wang-lu-4ms-by-zywaited/

>代码

```go

func smallestSufficientTeam(skills []string, people [][]string) []int {
    // 技能点位置
    skillIndex := make(map[string]uint)
    for i, skill := range skills {
        skillIndex[skill] = uint(i)
    }

    // 技能拥有人数
    sp := make(map[string][]int)

    // 先计算每个同学的技能点
    pl := len(people)
    ps := make([]int, pl)
    for i, ss := range people {
        for _, skill := range ss {
            if _, ok := skillIndex[skill]; !ok {
                continue
            }
            ps[i] |= 1 << skillIndex[skill]
            sp[skill] = append(sp[skill], i)
        }
    }

    // 替代人员
    for i := 0; i < pl; i++ {
        for j := i + 1; j < pl; j++ {
            if ps[i]|ps[j] == ps[i] {
                // i 包含 j
                ps[j] = 0
                continue
            }
            if ps[i]|ps[j] == ps[j] {
                // j 包含 i
                ps[i] = 0
                break
            }
        }
    }
    // 添加单独的技能人员
    cs := 0
    var cp []int
    for _, p := range sp {
        // 可能一个同学拥有多个独有技能，所以去重
        if len(p) > 1 || ps[p[0]] == 0 {
            continue
        }
        cp = append(cp, p[0])
        cs |= ps[p[0]]
        ps[p[0]] = 0
    }

    // 记住中间状态
    mp := make(map[int][]int)
    // 所有技能
    fs := (1 << uint(len(skills))) - 1
    var dp func(int, int, int) []int
    dp = func(i, now, need int) []int {
        if _, ok := mp[need]; ok {
            return mp[need]
        }

        for j := i + 1; j < pl; j++ {
            // 无技能或者被包含
            if ps[j] == 0 || now != 0 && ps[j]|now == now {
                continue
            }
            // 一个人
            if ps[j]|need == ps[j] {
                mp[need] = []int{j}
                break
            }
            tmp := dp(j, now|ps[j], (now|ps[j])^fs)
            // 找不到对应人员或者人数比现在还多
            if len(tmp) == 0 || len(mp[need]) != 0 && len(tmp) >= len(mp[need])-1 {
                continue
            }
            mp[need] = append([]int{j}, tmp...)
        }
        // 没找到则置空
        if len(mp[need]) == 0 {
            mp[need] = make([]int, 0)
        }
        return mp[need]
    }
    // 优化后只要找到除cp的其他人
    return append(cp, dp(-1, cs, cs^fs)...)
}


```

>复杂度分析

时间复杂度：O(n*m)

空间复杂度：O(n*m)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.9MB, 在所有 Go 提交中击败了100.00%的用户
