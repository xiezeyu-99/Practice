# LeetCode-48-rotate-image

>题目链接

[LeetCode-48-rotate-image](https://leetcode-cn.com/problems/rotate-image/)

>思路

先选中四个角，移动目标点遍历该行或者列，然后按规定交换位置，遍历完后就往回收拢，继续遍历该行或者列

>代码

```go

func rotate(matrix [][]int)  {
    length:=len(matrix)

    a:=[]int{0,0}
    b:=[]int{0,length-1}
    c:=[]int{length-1,length-1}
    d:=[]int{length-1,0}
    rowLenght:=length-1
    for i:=0;i<length/2;i++{
        for j:=0;j<rowLenght;j++{
            matrix[a[0]][a[1]],matrix[b[0]][b[1]],matrix[c[0]][c[1]],matrix[d[0]][d[1]] = matrix[d[0]][d[1]],matrix[a[0]][a[1]],matrix[b[0]][b[1]],matrix[c[0]][c[1]]
            if j<rowLenght-1{
                if i%2==0 {
                    a[1]++
                    b[0]++
                    c[1]--
                    d[0]--
                } else {
                    a[1]--
                    b[0]--
                    c[1]++
                    d[0]++
                }
            } else {
                a[0]++
                b[1]--
                c[0]--
                d[1]++
            }
        }
        rowLenght -=2
        if rowLenght == 0 {
            break
        }
    }
}
```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了100.00%的用户
