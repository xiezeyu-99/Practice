# LeetCode-面试题08.06

>题目链接

[LeetCode-面试题08.06](https://leetcode-cn.com/problems/hanota-lcci/)

> 思路


>代码

```go

//分治和递归的思想
func hanota(A []int, B []int, C []int) []int {

    if A == nil {
        return nil
    }

    move(len(A), &A, &B, &C)
    return C
}

func move(n int, A *[]int, B *[]int, C *[]int) {
    if n == 0 {
        return
    }
    if n == 1 { //最简问题处理：只有1个盘子，把盘子从A移动到C
        *C = (append(*C, (*A)[len(*A)-1]))
        *A = (*A)[:len((*A))-1]
    } else { //小一级问题处理。
        //把n个盘子从A通过B移动到C = 1. 先把n-1个盘子从A通过C移动到B 2. 把A的最后一个盘子移动到C 3. 把n-1个盘子从B 通过A 移动到C
        move(n-1, A, C, B)
        move(1, A, B, C)
        move(n-1, B, A, C)
    }
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
