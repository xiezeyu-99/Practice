# LeetCode-面试题05.02

>题目链接

[LeetCode-面试题05.02](https://leetcode-cn.com/problems/bianry-number-to-string-lcci/)

> 思路

用数组记录后缀和，也就是当前结点为结尾的所有子树的和

>代码

```go

//小数是乘2，取整数，拿小数继续算，直到小数位是0
/*
0.8125x2=1.625 取整1,小数部分是0.625
0.625x2=1.25 取整1,小数部分是0.25
0.25x2=0.5 取整0,小数部分是0.5
0.5x2=1.0 取整1,小数部分是0，结束。

所以0.8125的二进制是0.1101

 */
func printBin(num float64) string {
    var res []byte
    res = append(res, '0','.')

    for num!=0{
        num *=2
        if num >=1{
            res = append(res, '1')
            num-=1
        }else{
            res = append(res, '0')
        }
    }
    if len(res)>=32{return "ERROR"}
    return string(res)
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
