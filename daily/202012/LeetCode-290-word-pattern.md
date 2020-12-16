#  LeetCode-290-word-pattern

>题目链接

[LeetCode-290-word-pattern](https://leetcode-cn.com/problems/word-pattern/)

>  思路

两个map，双向映射

>代码

```go

func wordPattern(pattern string, s string) bool {
    tmp1:=make(map[string]string)
    tmp2:=make(map[string]string)
    sSlice:=strings.Split(s, " ")
    i:=0
    if len(pattern)!=len(sSlice){
        return false
    }
    for i<len(pattern){
        if v,ok:=tmp1[string(pattern[i])];ok{
            if v!=sSlice[i]{
                return false
            }
        } else {
            tmp1[string(pattern[i])] = sSlice[i]
        } 
        if v,ok:=tmp2[sSlice[i]];ok{
            if v!=string(pattern[i]){
                return false
            }
        } else {
            tmp2[sSlice[i]] = string(pattern[i])
        } 
        i++ 
    }
    return true
}

```


>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了64.96%的用户
