# LeetCode-179-largest-number

>题目链接

[LeetCode-179-largest-number](https://leetcode-cn.com/problems/largest-number/)

>思路

把整数转换成字符串，然后用自定义排序，通过比较s[i]+s[j]以及s[j]+s[i]的大小去进行排序，最后拼接字符串

>代码

```go

func largestNumber(nums []int) string {
    if len(nums)==1{
        return strconv.Itoa(nums[0])
    }
    str:=make([]string,len(nums))
    for i,v:=range nums{
        str[i] = strconv.Itoa(v)
    }

    sort.Slice(str,func(i,j int) bool{
        return str[i]+str[j]>str[j]+str[i]
    })
    if str[0] == "0" {
        return "0"
    }
    result:=strings.Join(str,"")
    return result
}

```

>复杂度分析

时间复杂度：O(nLogn)

空间复杂度：O(n)

>总结

执行用时 :0 ms, 在所有 Go 提交中击败了 100.00%的用户

内存消耗 :2.3 MB, 在所有 Go 提交中击败了100.00%的用户
