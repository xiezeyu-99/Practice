# LeetCode-18-4sum

>题目链接

[LeetCode-18-4sum](https://leetcode-cn.com/problems/4sum/)

>思路

固定前两个数，后面两个数用双指针找，注意数字相同的情况下只处理一次，然后后面的直接跳过

>代码

```go

func fourSum(nums []int, target int) [][]int {
    sort.Ints(nums)
    ans:=[][]int{}
    for i:=0;i<=len(nums)-4;i++{
        if i>0&&nums[i]==nums[i-1] {
            continue
        }
        for j:=i+1;j<=len(nums)-3;j++{
            if j>i+1&&nums[j]==nums[j-1] {
                continue
            }
            sum:=target-nums[i]-nums[j]
            left,right:=j+1,len(nums)-1
            for left<right {
                currentSum:=nums[left]+nums[right]
                if currentSum < sum {
                    left++
                } else if currentSum > sum {
                    right--
                } else {
                    ans = append(ans, []int{nums[i],nums[j],nums[left],nums[right]})                  
                    for left+1<=right&&nums[left]==nums[left+1]{
                        left++
                    }
                    for right-1>=left&&nums[right]==nums[right-1]{
                        right--
                    }
                    left++
                    right--
                    
                }
            }
        }
    }
    return ans
}


```

>复杂度分析

时间复杂度：O(n^3)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了73.66%的用户

内存消耗 :2.7MB, 在所有 Go 提交中击败了100.00%的用户
