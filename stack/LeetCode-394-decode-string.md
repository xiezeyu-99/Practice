# LeetCode-394-decode-string

>题目链接

[LeetCode-394-decode-string](https://leetcode-cn.com/problems/decode-string/)

>思路

1、遇到"["开始，到“]”结束，重复中间的数字，再拼接在上一层的字符后面，例如 a2[b]，最后拼接a + b*2，所以需要记录下的元素包括括号前的数字以及上一个"["到当前“[”之间的字符

2、建立一个结构体，记录倍数以及上一层的字符串，遍历原始字符串，遇到"["，就把前面的倍数和字符组成结构体入栈，然后继续遍历后面的字符串

3、当遇到“]”时，从栈中弹出最后一个元素，这个元素就是当前层的倍数以及上一层的字符串，接着进行拼接操作

>代码

```go

func decodeString(s string) string {
    type pair struct {
        mul int         //当前[]中字符串的倍数
        res string    //是上个 [ 到当前 [ 的字符串
    }
    stack := list.New()
    var multi int = 0
    var res string = ""
    for _, v := range s {
        if v >= '0' && v <= '9' {
            multi = multi * 10 + int(v - '0')   //统计下一个[前的倍数
        }else if v == '[' {
            stack.PushBack(pair{multi, res})    //把当前[前所有的字符串组成的序列和当前[倍数压入栈
            multi, res = 0, ""
        }else if v == ']' {
            temp := stack.Back().Value.(pair)       
            stack.Remove(stack.Back())
            res = temp.res + strings.Repeat(res, temp.mul)   //字符串拼接
        }else {
            res += string(v)                        //遇到字母就直接拼接到当前res中直到遇到]时就进行
                                                   //更新字符串序列
        }
        
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0 ms, 在所有 Go 提交中击败了 100.00%的用户

内存消耗 :2 MB, 在所有 Go 提交中击败了100.00%的用户
