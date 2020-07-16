# LeetCode-9-palindrome-number

>题目链接

[LeetCode-9-palindrome-number](https://leetcode-cn.com/problems/palindrome-number/)

>思路

从个位开始反转，最终和原数字相等就是回文数

>代码

```go

func isPalindrome(x int) bool {
    if x<0{
        return false
    }
    nums:=0
    temp:=x
    for temp!=0 {
        nums = nums*10 + temp%10
        temp = temp/10
    }

    return nums == x
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了91.80%的用户

内存消耗 :5.2MB, 在所有 Go 提交中击败了88.00%的用户
