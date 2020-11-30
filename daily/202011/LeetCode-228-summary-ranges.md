#  LeetCode-228-summary-ranges

>题目链接

[LeetCode-228-summary-ranges](https://leetcode-cn.com/problems/summary-ranges/)

>思路

双指针

>代码

```go

func summaryRanges(nums []int) []string {
    res := []string{}
    head := 0
    for i := 0; i < len(nums); i++ {
        if i+1 == len(nums) || nums[i] != nums[i+1]-1 {
            if head == i {
                res = append(res, strconv.Itoa(nums[head]))
            } else {
                res = append(res, strconv.Itoa(nums[head])+"->"+strconv.Itoa(nums[i]))
            }

            head = i + 1
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
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了96.77%的用户
