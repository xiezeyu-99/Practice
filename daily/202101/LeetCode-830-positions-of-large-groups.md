#  LeetCode-830-positions-of-large-groups

>题目链接

[LeetCode-830-positions-of-large-groups](https://leetcode-cn.com/problems/positions-of-large-groups/)

>思路

遍历计数，遇到不同的就判断数量并且重置

>代码

```go

func largeGroupPositions(s string) [][]int {
    var str byte 
    count:=1
    temp:=[]int{}
    res:=[][]int{}
    for i:=range s{
        if s[i] != str {
            if count >= 3  {
                temp = append(temp, i-1)
                res = append(res,temp)
            } 
            count = 1
            str = s[i]
            temp = []int{i}          
        } else {
            count++
            if i==len(s)-1 && count >= 3{
                temp = append(temp, i)
                res = append(res,temp)
            }
        }
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.6MB, 在所有 Go 提交中击败了40.35%的用户
