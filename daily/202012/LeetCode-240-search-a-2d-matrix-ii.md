#  LeetCode-240-search-a-2d-matrix-ii

>题目链接

[LeetCode-240-search-a-2d-matrix-ii](https://leetcode-cn.com/problems/search-a-2d-matrix-ii/)

>思路

从左下角开始查找，这样可以明确，向上是变小的，向右是变大的

>代码

```go

func searchMatrix(matrix [][]int, target int) bool {
    if matrix==nil{
        return false
    }
    xlen:=len(matrix)
    if xlen==0{
        return false
    }

    ylen:=len(matrix[0])
    x,y:=xlen-1,0
    for x>=0 && y<=ylen-1{
        if matrix[x][y]==target{
            return true
        }else if  matrix[x][y]>target{
            x--
        }else{
            y++
        }
    }
    return false
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :28ms, 在所有 Go 提交中击败了83.19%的用户
 
内存消耗 :6.6MB, 在所有 Go 提交中击败了60.09%的用户
