#  LeetCode-400-nth-digit

>题目链接

[LeetCode-400-nth-digit](https://leetcode-cn.com/problems/nth-digit/)

>思路


>代码

```go

func findNthDigit(n int) int {
	digits:=1
	flag:=9
	// 求n所在的数为几位数
	for n-flag*digits>0{
		n=n-flag*digits
		flag=flag*10
		digits++
	}
	// 若n为个位数，返回n即可
	if digits==1{
		return n
	}
	number:=1
	for k:=1;k<digits;k++{
		number=number*10	
	}
	// 求n对应的数 
	number=number+(n-1)/digits
	idx:=(n-1)%digits
	// 将n对应的数转换为字符串类型，取第idx位并转换为整数 
	strnums:=strconv.Itoa(number)
	res,_:=strconv.Atoi(string(strnums[idx]))
	return res

}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了55.56%的用户
