# LeetCode-71-simplify-path
>题目链接

[LeetCode-71-simplify-path](https://leetcode-cn.com/problems/simplify-path/)

>思路

先用 / 分割字符串，然后用一个栈保存分割后的元素：

空字符串：连续 / 造成的，不入栈

单个点：表示当前目录，不入栈

两个点：表示上级目录，出栈一个元素

其他：入栈

>代码

```go

func simplifyPath(path string) string {
    ret := []string{}
    for _, v := range strings.Split(path, "/") {
        switch v {
        case "":
            break
        case ".":
            break
        case "..":
            if l := len(ret); l > 0 {
                ret = ret[:l-1]
            }
        default:
            ret = append(ret, v)
        }
    }
    return "/" + strings.Join(ret, "/")
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :3MB, 在所有 Go 提交中击败了89.33%的用户
