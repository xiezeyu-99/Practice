# LeetCode-363-max-sum-of-rectangle-no-larger-than-k

>题目链接

[LeetCode-363-max-sum-of-rectangle-no-larger-than-k](https://leetcode-cn.com/problems/max-sum-of-rectangle-no-larger-than-k/)

>思路

1.每次固定一个左右边界，然后用数组存下每一行的和，求不大于k的最大矩形和，就是求这个数组不大于k的最大子数组

2.求最大子数组，就尽量不要负数，数组元素一个个叠加，如果叠加到的数字和是负数时，就舍弃掉，重新开始叠加。如果k大于最大子数组，则最大子数组就是所求的结果，这样可以省略掉一部分求和的时间；如果k小于最大子数组，就进行暴力求和，一旦子数组和等于k，就立即退出。

>代码

```go

func maxSumSubmatrix (matrix [][]int, k int) int {
    row:=len(matrix)-1
    colunm:=len(matrix[0])-1

    max  := math.MinInt32
    for i:=0;i<=colunm;i++ {
        sum:=make([]int,row+1)
        for j:=i;j<=colunm;j++ {
            for k:=0;k<=row;k++{
                sum[k] += matrix[k][j]
            }
            max = int(math.Max(float64(max), float64(dpmax(sum, k))));
        }
    }
    return max;
}

func dpmax(arr []int,k int)int{
    rollSum:=arr[0]
    rollMax:=rollSum
    for i:=1;i<=len(arr)-1;i++ {
        if rollSum>0 {
            rollSum+=arr[i]
        } else {
            rollSum=arr[i]
        }
        if rollSum>rollMax {
            rollMax=rollSum
        }
    }
    if rollMax<=k {
        return rollMax
    }

    max  := math.MinInt32
    for i:=0;i<=len(arr)-1;i++{
        sum:=0
        for j:=i;j<=len(arr)-1;j++{
            sum+=arr[j]
            if sum>max&&sum<=k {
                max=sum
            }
            if max==k {
                return max
            }
        }
    }
    return max
}

```

>复杂度分析

时间复杂度：遍历固定左右边界，用时O(n^2)，计算每行的和，用时O(m)，寻找子数组，k大于等于最大子数组，以及小于最大子数组的概率各占一半，因此均摊时间复杂度为O(m/2+(m+m^2)/2)=O(m^2)，总的时间复杂度为O(n^2*m^2)

空间复杂度：一个保存每行的和的数组，O(n)

>总结

执行用时 :12 ms, 在所有 Go 提交中击败了 96.15%的用户

内存消耗 :4.5 MB, 在所有 Go 提交中击败了100.00%的用户
