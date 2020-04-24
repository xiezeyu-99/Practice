# LeetCode-239-sliding-window-maximum

>题目链接

[LeetCode-239-sliding-window-maximum](https://leetcode-cn.com/problems/sliding-window-maximum/)

>思路

先记下第一个k内的最大值，然后窗口往后移，如果：

1、新加入的元素比原来的最大值大，则更新最大值

2、原来的最大值移出了窗口，则重新在窗口里找最大值

3、其他情况最大值不变

>代码

```go

func maxSlidingWindow(nums []int, k int) []int {
    if k==1 {
        return nums
    }
    maxIndex := 0
    for i:=0;i<=k-1;i++{
        if nums[i]>nums[maxIndex] {
            maxIndex = i
        }
    }

    result:=[]int{nums[maxIndex]}

    for i:=k;i<=len(nums)-1;i++ {
        if nums[i] >= nums[maxIndex]{
            maxIndex = i
        } else if maxIndex < i-k+1{
            maxIndex = i-k+1
            for j:=i-k+1;j<=i;j++ {
                if nums[j]>nums[maxIndex] {
                    maxIndex = j
                }
            }
        }
        result  = append(result,nums[maxIndex])
    }
    return result
}

```

>复杂度分析

时间复杂度：遍历了一次数组，时间复杂度O(n)，

空间复杂度：O(n)

>总结

执行用时 :16 ms, 在所有 Go 提交中击败了 98.38%的用户

内存消耗 :6.3 MB, 在所有 Go 提交中击败了100.00%的用户
