# LeetCode-165-compare-version-numbers
>题目链接

[LeetCode-165-compare-version-numbers](https://leetcode-cn.com/problems/compare-version-numbers/)

>思路

分隔字符串，然后补齐长度，再遍历对比

>代码

```go

func compareVersion(version1 string, version2 string) int {
    v1s := strings.Split(version1,".")
    v2s := strings.Split(version2,".")
    for {
        if len(v1s)>len(v2s){
            v2s = append(v2s,"0")
        }else if len(v1s) < len(v2s) {
            v1s = append(v1s,"0")
        }else{
            break
        }
    }
    for i:=0;i<len(v1s);i++{
        a,_ := strconv.Atoi(v1s[i])
        b,_ := strconv.Atoi(v2s[i])
        if a>b {
            return 1
        }else if a<b{
            return -1
        }
    }
    return 0
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2MB, 在所有 Go 提交中击败了36.67%的用户
