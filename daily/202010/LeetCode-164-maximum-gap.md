# LeetCode-164-maximum-gap
>题目链接

[LeetCode-164-maximum-gap](https://leetcode-cn.com/problems/maximum-gap/)

>思路

1) 首先求出数组的最大值max和最小值min；

2) 然后将该区间均等的划分为n+1份，即n+1个桶，那么由于只有n个数，因此，必定至少有一个桶为空桶；

3) 遍历数组，将所有数入桶，并记录每一个桶的最大值和最小值；

4) 不用考虑桶内数的差值，因为它都不会大过空桶两边的桶的数的差值；

5) 依次遍历每一个桶，找到一个空桶，记录其前一个非空桶的最大值和其后一个非空桶的最小值，它们的差值就是最大的（考虑有多个空桶的情况）。

>代码

```go

func maximumGap(nums []int) int {
    if len(nums) < 1 {
        return 0
    }
    max := nums[0]
    min := nums[0] //找到最大和最小
    for _, v := range nums {
        if max < v {
            max = v
        }
        if min > v {
            min = v
        }
    }
    if min == max {
        return 0
    }
    c_max := make([]int, len(nums)+1) //记录容器中的最大值
    c_min := make([]int, len(nums)+1) //记录容器中的最小值
    has := make([]bool, len(nums)+1)  //某个桶内是否已经装有数据,默认值false
    for _, v := range nums {
        cid := CountCid(v, max, min, len(nums)) //求容器编号
        if has[cid] == false {                  //该容器无数据则最大，最小都为v，更改标记
            c_max[cid] = v
            c_min[cid] = v
            has[cid] = true
        } else { //该容器已有数据，则比较，更新
            if c_max[cid] < v {
                c_max[cid] = v
            }
            if c_min[cid] > v {
                c_min[cid] = v
            }
        }
    }
    res := 0
    lastMax := c_max[0]

    for i := 1; i <= len(nums); i++ {
        if has[i] {
            res = int(math.Max(float64(res), float64(c_min[i]-lastMax)))
            lastMax = c_max[i]
        }
    }
    return res
}
func CountCid(num, max, min, len int) (cid int) {
    return (num - min) * (len) / (max - min)
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了91.74%的用户
 
内存消耗 :3.3MB, 在所有 Go 提交中击败了64.00%的用户
