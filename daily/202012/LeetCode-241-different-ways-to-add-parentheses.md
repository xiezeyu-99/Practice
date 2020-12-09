#  LeetCode-241-different-ways-to-add-parentheses

>题目链接

[LeetCode-241-different-ways-to-add-parentheses](https://leetcode-cn.com/problems/different-ways-to-add-parentheses/)

>思路

分治

>代码

```go

func diffWaysToCompute(input string) []int {
    // 如果是数字，直接返回
    if isDigit(input) {
        tmp, _ := strconv.Atoi(input)
        return []int{tmp}
    }
    
    // 空切片
    var res []int 
    // 遍历字符串
    for index, c := range input {
        tmpC := string(c)
        if tmpC == "+" || tmpC == "-" || tmpC == "*" {
            // 如果是运算符，则计算左右两边的算式
            left := diffWaysToCompute(input[:index])
            right := diffWaysToCompute(input[index+1:])
            
            for _, leftNum := range left {
                for _, rightNum := range right {
                    var addNum int
                    if tmpC == "+" {
                        addNum = leftNum + rightNum
                    } else if tmpC == "-" {
                        addNum = leftNum - rightNum
                    } else {
                        addNum = leftNum * rightNum
                    }
                    res = append(res, addNum)
                }
            }
        }
    }

    return res
}

// 判断是否为全数字
func isDigit(input string) bool {
    _, err := strconv.Atoi(input)
    if err != nil {
        return false
    }
    return true
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.5MB, 在所有 Go 提交中击败了17.33%的用户
