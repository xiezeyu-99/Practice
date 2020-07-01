# LeetCode-12-integer-to-roman

>题目链接

[LeetCode-12-integer-to-roman](https://leetcode-cn.com/problems/integer-to-roman/)

>思路

从数字个位开始，一位一位的转

>代码

```go

func intToRoman(num int) string {
    s:=[][]string{
        {"I","V","X"},
        {"X","L","C"},
        {"C","D","M"},
        {"M"},
    }
    i:=0
    result := ""
    for num > 0{
        n:=num%10
        result = deal(n,s[i]) +result
        num /=10
        i++

    }
    return result
}

func deal(n int, s []string) string{
    str:=""
    if n <4{
        for i:=0;i<n;i++{
            str += s[0]
        }
    } else if n==4{
        str = s[0]+s[1]
    } else if n==5{
        str = s[1]
    } else if n==9{
        str = s[0]+s[2]
    } else {
        str = s[1]
        for i:=0;i<n-5;i++{
            str += s[0]
        }
    }
    return str
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了83.33%的用户

内存消耗 :3.4MB, 在所有 Go 提交中击败了100.00%的用户
