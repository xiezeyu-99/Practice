# LeetCode-189-rotate-array
>题目链接

[LeetCode-189-rotate-array](https://leetcode-cn.com/problems/rotate-array/)

>思路

右移k位，相当于最后k%len个元素要移到数组开头，所以先反转整个数组，使后面的k%len个元素移到开头，此时数组顺序已经反转，然后再分别反转开头的k%len个元素以及剩下的元素，

使得顺序恢复

>代码

```go

func rotate(nums []int, k int) {
    reverse(nums)
    reverse(nums[:k%len(nums)])
    reverse(nums[k%len(nums):])
}

func reverse(a []int){
    i,j:=0,len(a)-1
    for i<=j{
        a[i],a[j]=a[j],a[i]
        i++
        j--
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了93.50%的用户
 
内存消耗 :3.1MB, 在所有 Go 提交中击败了53.50%的用户
