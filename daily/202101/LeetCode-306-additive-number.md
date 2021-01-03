#  LeetCode-306-additive-number

>题目链接

[LeetCode-306-additive-number](https://leetcode-cn.com/problems/additive-number/)

>思路

回溯

>代码

```go

func isAdditiveNumber(num string) bool {
    n := len(num)
    if n < 3 {
        return false
    }
    for i := 1; i < n; i++ {
        if i > 1 && num[0] == '0' { // 排除前导 0
            break
        }
        if lst, _ := strconv.Atoi(num[:i]); dfs(num, lst, i) { // 不是很优雅的递归
            return true
        }
    }
    return false
}

func dfs(num string, lst int, idx int) bool {
    n := len(num)
    isAdditive := false
    for nxtStart := idx + 1; nxtStart < n; nxtStart++ {
        if nxtStart > idx+1 && num[idx] == '0' { // 排除前导 0
            break
        }
        cur, _ := strconv.Atoi(num[idx:nxtStart]) // 第二个数
        sum := strconv.Itoa(cur + lst)            // 第一个数和第二个数的和
        dur := len(sum)                           // 第三个数的长度
        nxtEnd := nxtStart + dur                  // 第三个数的右区间
        if nxtEnd > n {                           // 如果右区间越界，结束循环
            break
        }
        if sum == num[nxtStart:nxtEnd] { // 如果和相等
            if nxtEnd == n { // 并且刚好到数组的最后一位，则为累加数
                return true
            }
            isAdditive = dfs(num, cur, nxtStart) // 没到结尾就继续递归
        }
    }
    return isAdditive
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了68.06%的用户
