# LeetCode-137-single-number-ii

>题目链接

[LeetCode-137-single-number-ii](https://leetcode-cn.com/problems/single-number-ii/)

>思路

统计每一个二进制位的和，如果不能被3整除，则证明该位是1。注意go的整数是64位的，坑。

>代码

```go

func singleNumber(nums []int) int {
    result:=0
    for j:=0;j<64;j++{
        sum:=0
        for i:=0;i<len(nums);i++{
            sum += (nums[i]>>j)&1
        }

        if sum%3 != 0{
            result = (1<<j) | result
        }
    }
    return result
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了52.55%的用户

内存消耗 :3.6MB, 在所有 Go 提交中击败了100.00%的用户
