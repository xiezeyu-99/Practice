# LeetCode-715-range-module

>题目链接

[LeetCode-715-range-module](https://leetcode-cn.com/problems/range-module/)

>思路

区间线段+二分法，注意各种边界条件

>代码

```go

// 线段区间+二分法
// 注意各种边界条件。。。。
type RangeModule struct {
    rng [][2]int
}


func Constructor() RangeModule {
    return RangeModule{}
}


func (this *RangeModule) AddRange(left int, right int)  {
    l, r:= 0, len(this.rng)
    // find insert left positon
    for l <  r {
        mid := l + (r-l)/2
        if left > this.rng[mid][1] {
            l = mid + 1
        } else {
            r = mid
        }
    }
    
    if l > len(this.rng)-1 {
        this.rng = append(this.rng, [2]int{left, right})
        return
    }
    // merge range may include start
    start := l
    l, r = start, len(this.rng)  
    for l <  r {
        mid := l + (r-l)/2
        if right >= this.rng[mid][0] {
            l = mid + 1
        } else {
            r = mid
        }
    }
    
    end := l // exclude end for the merge items

    if start == end {
        // left <= rng[start][1] && right < rng[start][0]
        this.rng = append(this.rng[:start], append([][2]int{[2]int{left, right}}, this.rng[start:]...)...)
        return
    }
    if start > end {
        panic("programmer error...")
    }

    newRng := [2]int{min(this.rng[start][0], left), max(right, this.rng[end-1][1])}
    this.rng[start] = newRng
    this.rng = append(this.rng[:start+1], this.rng[end:]...)

}


func (this *RangeModule) QueryRange(left int, right int) bool {
    l, r:= 0, len(this.rng)-1
    // find insert left positon
    for l <  r {
        mid := l + (r-l)/2
        if left > this.rng[mid][1] {
            l = mid + 1
        } else {
            r = mid
        }
    }
    // check if l match the range
    if l > len(this.rng) - 1 {
        return false
    }
    if this.rng[l][1] < right || this.rng[l][0] > left{
        return false
    } 
    return true
}


func (this *RangeModule) RemoveRange(left int, right int)  {
        l, r:= 0, len(this.rng)
    // find remove left positon
    for l <  r {
        mid := l + (r-l)/2
        if left > this.rng[mid][1] {
            l = mid + 1
        } else {
            r = mid
        }
    }
    
    if l > len(this.rng)-1 {
        // not in current range
        return
    }
    // range may include start
    start := l
    l, r = start, len(this.rng)
    for l <  r {
        mid := l + (r-l)/2
        if right >= this.rng[mid][0] {
            l = mid + 1
        } else {
            r = mid
        }
    }
    end := l // exclude end for the delete items

    if end == start {
        // not int current range
        return
    }
    if start > end {
        panic("programmer error...")
    }

    if left <= this.rng[start][0] {
        // remove start~end-2
        this.rng = append(this.rng[:start], this.rng[end-1:]...)
        end = start
    } else {
        this.rng = append(this.rng[:start+1], this.rng[end-1:]...)
        this.rng[start][1] = left
        end = start+1

    }
    
    if right >= this.rng[end][1] {
        // remove end
        this.rng = append(this.rng[:end], this.rng[end+1:]...)
    } else {
        this.rng[end][0] = right
    }

}

func max(a, b int) int {
    if a > b {
        return a
    }
    return b
}

func min(a, b int) int {
    if a < b {
        return a
    }
    return b
}

/**
 * Your RangeModule object will be instantiated and called as such:
 * obj := Constructor();
 * obj.AddRange(left,right);
 * param_2 := obj.QueryRange(left,right);
 * obj.RemoveRange(left,right);
 */
```

>复杂度分析

时间复杂度：O(logn),

空间复杂度：O(n)

>总结

执行用时 :232ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :8.5MB, 在所有 Go 提交中击败了100.00%的用户
