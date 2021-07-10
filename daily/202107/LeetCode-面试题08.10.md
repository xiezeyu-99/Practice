# LeetCode-面试题08.10

>题目链接

[LeetCode-面试题08.10](https://leetcode-cn.com/problems/color-fill-lcci/)

> 思路


>代码

```go

func floodFill(image [][]int, sr int, sc int, newColor int) [][]int {
    origin:=image[sr][sc]
    if origin == newColor {
        return image
    }
    var f func(x,y int)
    f= func(x,y int){
        if image[x][y] == origin {
            image[x][y] = newColor
        } else {
            return
        }
        if x+1<len(image) {
            f(x+1,y)
        }
        if x-1>=0 {
            f(x-1,y)
        }
        if y+1<len(image[0]) {
            f(x,y+1)
        }
        if y-1>=0 {
            f(x,y-1)
        }
    }
    f(sr,sc)
    return image
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
