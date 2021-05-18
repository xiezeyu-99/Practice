# LeetCode-1442

>题目链接

[LeetCode-1442](https://leetcode-cn.com/problems/count-triplets-that-can-form-two-arrays-of-equal-xor/)

> 思路

如果a == b，则a ^ b ==0，i和k之间任意一个点都可以作为j

>代码

```go

func countTriplets(arr []int) int {
    count:=0
    for i:=0;i<len(arr)-1;i++ {
        res:=arr[i]
        for k:=i+1;k<len(arr);k++ {
            res ^= arr[k]
             if res == 0{
                count += k-i
            }
        }       
    }
    return count
}
```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了25.00%的用户

内存消耗 :2.5MB, 在所有 Go 提交中击败了95.93%的用户
