# LeetCode-407-trapping-rain-water-ii

>题目链接

[LeetCode-407-trapping-rain-water-ii](https://leetcode-cn.com/problems/trapping-rain-water-ii/)

>思路


>代码

```go

type point struct {
    x, y, height int
} 
func trapRainWater(heightMap [][]int) int {
    m, n := len(heightMap), len(heightMap[0])
    if m <= 2 || n <= 2 {
        return 0
    }
    var pArr []point
    tag := make([][]bool, m)
    for i := range tag {
        tag[i] = make([]bool, n)
    }
    for i := 0; i < m; i++ {
        p1 := point{i, 0, heightMap[i][0]}
        p2 := point{i, n-1, heightMap[i][n-1]}
        tag[i][0], tag[i][n-1] = true, true
        pArr = append(pArr,p1,p2)
    }
    for i := 1; i < n-1; i++ {
        p1 := point{0, i, heightMap[0][i]}
        p2 := point{m-1, i, heightMap[m-1][i]}
        tag[m-1][i], tag[0][i] = true, true
        pArr = append(pArr,p1,p2)
    }
    tot, result := (m+n)*2-4, 0
    initHeap(pArr)
    direction := [4][2]int{{0,1},{0,-1},{-1,0},{1,0}}
    for tot < m*n {
        top := pop(&pArr)
        // pmin := point{-1,-1,math.MaxInt64}
        for _, v := range direction {
            xx, yy := v[0]+top.x, v[1]+top.y 
            if xx >= 0 && xx < m && yy >= 0 && yy < n && !tag[xx][yy] {
                pmin := point{xx, yy, heightMap[xx][yy]}
                if pmin.height < top.height {
                    result += top.height - pmin.height
                    pmin.height = top.height
                }
                tot++
                tag[pmin.x][pmin.y] = true
                push(&pArr, pmin)
            }
        }
    }
    return result
}

func down(pos int, p []point) bool {
    now, n := pos, len(p)
    for {
        if now*2+1 >= n {
            break
        }
        next := now*2+1 
        if now*2+2 < n && p[now*2+2].height < p[now*2+1].height {
            next = now*2+2
        }
        if p[next].height >= p[now].height {
            break
        }
        p[next], p[now] = p[now], p[next]
        now = next
    }
    return now > pos
}

func up(pos int, p []point) {
    for {
        next := (pos-1)/2
        if p[next].height <= p[pos].height {
            break
        }
        p[next], p[pos] = p[pos], p[next]
        pos = next
    }
}

func initHeap(p []point) {
    for i := len(p)/2-1; i >= 0 ; i-- {
        down(i, p)
    }
}

func pop(p *[]point) point{
    n, a := len(*p), *p
    (*p)[0], (*p)[n-1] = (*p)[n-1], (*p)[0]
    result := a[n-1]
    *p = a[:n-1]
    down(0, *p)
    return result
}

func push(p *[]point, x point) {
    n := len(*p)
    *p = append(*p, x)
    up(n, *p)
}



```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :6.2MB, 在所有 Go 提交中击败了81.82%的用户
