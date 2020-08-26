# LeetCode-87-scramble-string
>题目链接

[LeetCode-87-scramble-string](https://leetcode-cn.com/problems/scramble-string/)

>思路

用质数对应字母，通过相乘判断是否包含相同的字母，然后头头比较或者头尾比较，不断递归

>代码

```go

var tmp=map[rune]int{
    'a':2,
    'b':3,
    'c':5,
    'd':7,
    'e':11,
    'f':13,
    'g':17,
    'h':19,
    'i':23,
    'j':29,
    'k':31,
    'l':37,
    'm':41,
    'n':43,
    'o':47,
    'p':53,
    'q':59,
    'r':61,
    's':67,
    't':71,
    'u':73,
    'v':79,
    'w':83,
    'x':89,
    'y':97,
    'z':101}
func isScramble(s1 string, s2 string) bool {
    if s1==s2{
        return true
    }
    length:=len(s1)
    for i:=1;i<length;i++{
        if mux(s1[:i])==mux(s2[:i]){
            if isScramble(s1[:i],s2[:i])&&isScramble(s1[i:],s2[i:]){
                return true
            }

        }
        if mux(s1[:i])==mux(s2[length-i:]){
            if isScramble(s1[:i],s2[length-i:])&&isScramble(s1[i:],s2[0:length-i]){
                return true
            }
        }
    }
    return false
}
func mux(s1 string)int{
    ans:=1
    for  _,j:=range(s1){
        ans=ans*tmp[j]
    }
    return ans
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了94.445%的用户
