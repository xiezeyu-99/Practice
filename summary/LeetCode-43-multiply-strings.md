# LeetCode-43-multiply-strings

>题目链接

[LeetCode-43-multiply-strings](https://leetcode-cn.com/problems/multiply-strings/)

>思路

num1[i] * num[j] 值必定在temp[i+j] temp[i+j+1]上，i+j+1存储个位  i+j储存十位

>代码

```go

func multiply(num1 string, num2 string) string {
    if num1=="0"||num2=="0"{
        return "0"
    }
    temp := make([]int,len(num1)+len(num2))

    for i:=len(num1)-1;i>=0;i--{
        n1:= int(num1[i]-'0')
        for j:=len(num2)-1;j>=0;j--{
            n2 := int(num2[j]-'0')
            res := n1*n2 + temp[i+j+1]
            temp[i+j+1] = res%10
            temp[i+j] += res/10
        }
    }

    res := ""
    for k, v := range temp {
        if k == 0 && v == 0 {
            continue
        }
        res += strconv.Itoa(v)
    }
    return res
}
```

>复杂度分析

时间复杂度：O(n*m)

空间复杂度：O(n+m)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了67.45%的用户

内存消耗 :3MB, 在所有 Go 提交中击败了100.00%的用户
