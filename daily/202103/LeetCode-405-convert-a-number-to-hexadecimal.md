# LeetCode-405-convert-a-number-to-hexadecimal

>题目链接

[LeetCode-405-convert-a-number-to-hexadecimal](https://leetcode-cn.com/problems/convert-a-number-to-hexadecimal/)

>思路



>代码

```go

func toHex(num int) string {
    if num == 0 {
        return "0"
    }
   // 补码
    if num < 0 {
        num += int(^uint32(0))+1
    }
    change:=map[int]string{
        10:"a",
        11:"b",
        12:"c",
        13:"d",
        14:"e",
        15:"f",
    }
    res:=""
    for num!=0{
        y:=num%16
        if y >=10 {
            res = change[y] + res
        } else {
            res = strconv.Itoa(y) + res
        }
        num=num/16
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了83.13%的用户
