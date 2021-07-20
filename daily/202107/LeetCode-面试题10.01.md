# LeetCode-面试题10.01

>题目链接

[LeetCode-面试题10.01](https://leetcode-cn.com/problems/sorted-merge-lcci/)

> 思路

>代码

```go

func merge(A []int, m int, B []int, n int)  {
    i,j,index:=m-1,n-1,len(A)-1
    for i>=0 && j>=0 {
        if A[i] > B[j] {
            A[index] = A[i]
            i--
        } else {
            A[index] = B[j]
            j--
        }
        index--
    }
    if j >= 0 {
        for k:=0;k<=j;k++{
            A[k] = B[k]
        }
    }
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
