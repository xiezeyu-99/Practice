# LeetCode-16-3sum-closest

>题目链接

[LeetCode-16-3sum-closest](https://leetcode-cn.com/problems/3sum-closest/)

>思路

先排序，然后固定第一个数，用双指针去遍历剩下的数，如果和大于目标值，移动右指针，否则移动左指针，令和不断趋近目标值

>代码

```go

func threeSumClosest(nums []int, target int) int {
    sort.Ints(nums)
    dif:=math.MaxInt32
    
    for i:=0;i<=len(nums)-3;i++{
        left,right:=i+1,len(nums)-1
        for left<right{
            sum:=nums[i]+nums[left]+nums[right]
            if sum > target {
                if abs(target-sum) < abs(dif) {
                    dif = target-sum
                }
                right--                      
            } else if sum < target {
                if abs(target-sum) < abs(dif) {
                    dif = target-sum
                }
                left++                            
            } else {
                return sum
            }
        }
    }
    return target-dif
}



func abs(x int) int {
    if x>=0 {
        return x
    } else {
        return x*-1
    }
}


```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了95.06%的用户

内存消耗 :2.7MB, 在所有 Go 提交中击败了25.00%的用户
