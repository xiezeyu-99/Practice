# LeetCode-151-reverse-words-in-a-string

>题目链接

[LeetCode-151-reverse-words-in-a-string](https://leetcode-cn.com/problems/reverse-words-in-a-string/)

>思路

1.把字符串按空格分隔成切片

2.从后面开始遍历字符串切片，把字符串转换为byte切片后，再放入新的byte切片中保存，注意每个单词后面加一个空格，最后把新的byte切片转字符串输出

3.最后一步之所以不直接拼接字符串，是因为对比发现直接拼接字符串比转byte切片慢很多，应该是和拼接过程中不断申请新的内存空间存放字符串有关

>代码

```go

func reverseWords(s string) string {
    if s =="" {
        return ""
    }
    stack:=strings.Fields(s)

    var resutl []byte
    length:=len(stack)
    if length ==0 {
        return ""
    }
    for i:=length-1;i>=0;i--{
        resutl = append(resutl, []byte(stack[i])...)
        resutl = append(resutl, ' ')
    }
    return string(resutl[:len(resutl)-1])
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0 ms, 在所有 Go 提交中击败了 100.00%的用户

内存消耗 :4.1 MB, 在所有 Go 提交中击败了75.00%的用户
