# LeetCode-6-zigzag-conversion

>题目链接

[LeetCode-6-zigzag-conversion](https://leetcode-cn.com/problems/zigzag-conversion/)

>思路

 找到变换后的规律，然后按行遍历

>代码

```go

func convert(s string, numRows int) string {
    if s==""{
        return ""
    }
    if len(s)==1 || numRows==1{
        return s
    }
    var ans []byte
    power:=2
    for i:=0;i<numRows&&i<len(s);i++{
        ans = append(ans,s[i])
        j:=i
        for j+2*numRows-power<=len(s)-1 {
            if i!=0&&i!=numRows-1{
                ans = append(ans,s[j+2*numRows-power])
            }
            if j+2*numRows-2<=len(s)-1  {
                ans = append(ans,s[j+2*numRows-2])
            }

            j = j+2*numRows-2
        }
        power +=2
    }
    return string(ans)
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :4.1MB, 在所有 Go 提交中击败了100.00%的用户
