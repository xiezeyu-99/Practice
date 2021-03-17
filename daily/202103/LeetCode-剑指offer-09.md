#  LeetCode-剑指offer-09

>题目链接

[LeetCode-剑指offer-09](https://leetcode-cn.com/problems/yong-liang-ge-zhan-shi-xian-dui-lie-lcof/)

>思路

添加数据是，往栈A加数据，当需要删除头数据时，如果栈B为空，就把栈A的数据全部倒序放到B，这样B栈顶元素就是列表的头元素

>代码

```go

type CQueue struct {
    stackA []int
    stackB []int
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :232ms, 在所有 Go 提交中击败了92.04%的用户

内存消耗 :8.4MB, 在所有 Go 提交中击败了81.50%的用户
