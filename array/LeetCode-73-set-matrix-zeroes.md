# LeetCode-73-set-matrix-zeroes

>题目链接

[LeetCode-73-set-matrix-zeroes](https://leetcode-cn.com/problems/set-matrix-zeroes/)

>思路

遍历矩阵，遇到当前元素为0的，则把当前元素所在行和列的第一个元素置0，而(0,0)位置是个特殊点，元素的值既会影响第一行，也会影响第一列，所以要额外引入多一个变量，标识第一列的情况，当第一列的元素有0时，不再把(0,0)元素置0，而是把引入的标识置0


>代码

```go
func setZeroes(matrix [][]int)  {
	//第一列是否置0
	isCol:= false
	
	R := len(matrix);
	C := len(matrix[0]);
	for i := 0; i<R;i++  {
		if (matrix[i][0] == 0) {
			isCol = true
		}
		for j:=1;j<C ;j++  {
			if matrix[i][j] == 0{
				matrix[i][0] = 0
				matrix[0][j] = 0
			}
		}
	}

	for i := 1; i<R;i++  {
		for j:=1;j<C ;j++  {
			if (matrix[i][0] == 0 || matrix[0][j] == 0) {
				matrix[i][j] = 0;
			}
		}
	}

	// See if the first row needs to be set to zero as well
	if (matrix[0][0] == 0) {
		for j:= 0; j < C; j++ {
			matrix[0][j] = 0;
		}
	}

	// See if the first column needs to be set to zero as well
	if (isCol) {
		for i := 0; i < R; i++ {
			matrix[i][0] = 0;
		}
	}

}
```

>复杂度分析

时间复杂度：O(m x n)

空间复杂度：O(1)

>总结


执行用时 :16 ms, 在所有 Go 提交中击败了82.09%的用户

内存消耗 :6 MB, 在所有 Go 提交中击败了100.00%的用户
