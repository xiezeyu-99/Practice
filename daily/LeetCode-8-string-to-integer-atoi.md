# LeetCode-8-string-to-integer-atoi

>题目链接

[LeetCode-8-string-to-integer-atoi](https://leetcode-cn.com/problems/string-to-integer-atoi/)

>思路

按顺序遍历，判断字符的各种情况

>代码

```go

func myAtoi(str string) int {
    symbol:=true
    vaildCount:=0
    nums:=0
    for i:=range str {
        if str[i] == ' ' {
            if vaildCount == 0{
                continue
            } else {
                break
            }        
        }
   
        if str[i] != '-' && str[i] != '+' && str[i]-'0'>9 {
            break   
        }

        vaildCount++
        if str[i] == '-' {
            if vaildCount == 1{
                symbol = false
                continue
            } else {
                break
            } 
        } else if str[i] == '+' && vaildCount != 1 {
             break
        } else if str[i]-'0'<=9 {
            nums = nums*10+(int(str[i]-'0'))
            if !symbol {
                if nums*-1 < math.MinInt32 {
                    return math.MinInt32
                }
            } else {
                if nums > math.MaxInt32 {
                    return math.MaxInt32
                }
            }
        }
    }


    if !symbol {
        return nums*-1   
    } else {
        return nums
    }
    
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.3MB, 在所有 Go 提交中击败了54.55%的用户
