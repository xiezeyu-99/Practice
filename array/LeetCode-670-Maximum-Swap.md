# LeetCode-670-Maximum-Swap

> 题目链接

[LeetCode-670-Maximum-Swap](https://leetcode-cn.com/problems/maximum-swap/)

> 思路

分析：当数字从大到小顺序排列时，是无需进行交换的，只有当后一个数比前一个数大时才需要交换，此处即为分割点

1.把数字转成数组，然后从头开始遍历，遇到后一个数比前一个数大时，跳出循环，并且记录下分割点位置flag

2.从数组末尾开始遍历，到flag为止，找出最大值max

3.再从数组开头开始遍历到flag为止，找出第一个比max小的数字，和max交换位置

4.再把数组转回整数输出

> 代码

```go
func maximumSwap(num int) int {
	slice := intToSlice(num)
	len := len(slice)

	flag := -1
	for i := 0; i < len-1; i++ {
		if slice[i] < slice[i+1] {
			flag = i
			break
		}
	}
	if flag == -1 {
		return num
	}

	maxIndex := len - 1
	for i := len - 1; i > flag; i-- {
		if slice[i] == 9 {
			maxIndex = i
			break
		}
		if slice[i] > slice[maxIndex] {
			maxIndex = i
		}
	}

	for i := 0; i <= flag; i++ {
		if slice[maxIndex] > slice[i] {
			slice[i], slice[maxIndex] = slice[maxIndex], slice[i]
			break
		}
	}
	n := sliceToInt(slice)
	return n
}

func sliceToInt(slice []int) int {
	num := 0
	rate := 1
	for i := len(slice) - 1; i >= 0; i-- {
		num = num + slice[i]*rate
		rate *= 10
	}
	return num
}

func intToSlice(num int) []int {
	slice := []int{}
	for _, v := range strconv.Itoa(num) {
		slice = append(slice, int(v-'0'))
	}
	return slice
}
```

> 复杂度分析

时间复杂度O(n)

空间复杂度O(n)

> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户
内存消耗 :2 MB, 在所有 Go 提交中击败了25.00%的用户


