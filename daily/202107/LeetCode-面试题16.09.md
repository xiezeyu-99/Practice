# LeetCode-面试题16.09

>题目链接

[LeetCode-面试题16.09](https://leetcode-cn.com/problems/operations-lcci/)

> 思路


>代码

```go


type Operations struct {
}

func Constructor() Operations {
    return Operations{}
}

func (this *Operations) Sign(a, b int) int {
    _a := math.Atan(float64(a))
    _b := math.Atan(float64(b))
    if (_a < 0 && _b < 0) || (_a > 0 && _b > 0) {
        return 1
    } else {
        return int(math.Cos(math.Pi))
    }
}

func (this *Operations) Neg(num int) int {
    if num < 0 {
        return int(math.Abs(float64(num)))
    }
    if num, err := strconv.Atoi((strconv.FormatFloat(math.Cos(math.Pi), 'E', -1, 64)[0:1] + strconv.Itoa(num))); err == nil {
        return num
    }
    return 0
}

func (this *Operations) Minus(a int, b int) int {
    return a + this.Neg(b)
}

func (this *Operations) Multiply(a int, b int) int {

    n := this.Sign(a, b)
    if a == 0 || b == 0 {
        return 0
    }

    if a < 0 {
        a = int(math.Abs(float64(a)))
    }

    if b < 0 {
        b = int(math.Abs(float64(b)))
    }

    if a == 1 {
        if n > 0 {
            return b
        } else {
            return this.Neg(b)
        }
    }

    if b == 1 {
        if n > 0 {
            return a
        } else {
            return this.Neg(a)
        }
    }

    if a < b {
        tmp := a
        a = b
        b = tmp
    }

    sum := 0
    for i := 0; i < b; i++ {
        sum += a
    }

    if n > 0 {
        return sum
    } else {
        return this.Neg(sum)
    }
}

func (this *Operations) DoubleAdd(a int, b int) (_a, count int) {
    count = 1
    _a = a
    for b <= a {
        if b+b <= a {
            b += b
            count += count
            _a = a + this.Neg(b)
        } else if b <= a {
            _a = a + this.Neg(b)
            b += b
        } else {
            break
        }
    }

    return _a, count
}

func (this *Operations) Divide(a int, b int) int {
    n := this.Sign(a, b)
    if a < 0 {
        a = int(math.Abs(float64(a)))
    }

    if b < 0 {
        b = int(math.Abs(float64(b)))
    }

    if b == 1 {
        if n > 0 {
            return a
        } else {
            return this.Neg(a)
        }
    }

    if a == 0 || b == 0 {
        return 0
    }

    count := 0
    for a >= b {
        c := 0
        a, c = this.DoubleAdd(a, b)
        count += c
    }
    if n > 0 {
        return count
    } else {
        return this.Neg(count)
    }
}



```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
