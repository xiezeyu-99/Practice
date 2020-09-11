# LeetCode-216-combination-sum-iii

> 题目链接

[LeetCode-216-combination-sum-iii](https://leetcode-cn.com/problems/combination-sum-iii/)

> 思路

回溯

> 代码

```go

var ans [][]int
func combinationSum3(k int, n int) [][]int {
	ans=[][]int{}
	find(1,k,n, []int{})
	return ans
}

func find(index,k,n int, temp []int){
	if n == 0 && len(temp) == k {
		copyTemp := make([]int, len(temp))
		copy(copyTemp,temp)
		ans = append(ans,copyTemp)
		return
	}
    if n < 0 || len(temp) > k {
        return
    }
	for i:=index;i<=9;i++{
		temp = append(temp, i)
		find(i+1,k,n-i,temp)
		temp = temp[:len(temp)-1]
	}
}

```

> 复杂度分析

时间复杂度：O(1)

空间复杂度： O(1)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1 MB, 在所有 Go 提交中击败了16.67%的用户

