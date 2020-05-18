# LeetCode-202-happy-number

>题目链接

[LeetCode-202-happy-number](https://leetcode-cn.com/problems/happy-number/)

>思路

考虑到最大的两位数99的结果是162，最大三位数999的结果是243，最大四位数9999的结果是324，换算的比例不断下降，四位数及以上的数字最终都会缩减到三位数以内，而三位数最大的结果不会超过243，所以不会无限循环。不断求值，并且记录下所求到的值，当出现重复，则不是快乐数。

>代码

```go

func isHappy(n int) bool {
    resultMap:=make(map[int]bool)
    var re int
    for n != 1 && !resultMap[n] {
        resultMap[n] = true
        re=0
        for _,v:=range strconv.Itoa(n){
            re+=int((v-'0')*(v-'0'))
        }   
        n=re
    }
    
    if n==1{
        return true
    } else {
        return false
    }
}


```

>复杂度分析

时间复杂度：O(n),

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了50%的用户
