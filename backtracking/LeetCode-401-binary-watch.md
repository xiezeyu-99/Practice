# LeetCode-401-binary-watch

>题目链接

[LeetCode-401-binary-watch](https://leetcode-cn.com/problems/binary-watch/)

>思路

回溯找出所有符合要求的可能值

>代码

```go

var result []string
var status map[string]bool

func readBinaryWatch(num int) []string {
    result = []string{}
    status = make(map[string]bool)
    check(0, 0, num, 0, 0)
    return result
}

func check(n, count, num int, hour, minute int) {
    if n == 10 || count == num {
        if count == num {
            var minuteStr string
            if minute < 10 {
                minuteStr = "0" + strconv.Itoa(minute)
            } else {
                minuteStr = strconv.Itoa(minute)
            }
            time:=strconv.Itoa(hour)+":"+minuteStr
            if !status[time] {
                status[time] = true
                result = append(result, time)
            }
        }
        return
    }

    check(n+1, count, num, hour, minute)
    if n <= 3 {
        hour = hour + int(math.Pow(2, float64(n)))
    } else {
        minute = minute + int(math.Pow(2, float64(n-4)))
    }
    if hour <= 11 && minute <= 59 {
        check(n+1, count+1, num, hour, minute)
    }
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了100.00%的用户
