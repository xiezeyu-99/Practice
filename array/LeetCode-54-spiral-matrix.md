# LeetCode-54-spiral-matrix

>题目链接

[LeetCode-54-spiral-matrix 螺旋矩阵](https://leetcode-cn.com/problems/spiral-matrix/)

>思路

1.维护一个空的slice，形状和输入slice一致，如果对应位置已遍历过，则设置为true

2.设置好代表当前位置的两个坐标x,y往右、下、左、上移动时坐标的变化值，设置初始坐标(0,0)以及初始方向往右

3.已输入slice的元素总数为最大值，循环获取下个位置坐标,如果在区域内并且没有遍历过的，则加入结果集合中，否则就转向

>代码

```go
func spiralOrder(matrix [][]int) []int{
	//矩阵为空，直接返回结果
	if len(matrix) == 0 {
		return []int{}
	}
	m:=len(matrix)
	n:=len(matrix[0])
	result := make([]int, m*n)

	//维护一个空的slice，形状和输入slice一致，如果对应位置已遍历过，则设置为true
	emptyMatrix := make([][]bool, m)
	for i := range emptyMatrix {
		emptyMatrix[i] = make([]bool, n)
	}

	//x,y两个坐标，往右、下、左、上移动时坐标的变化值
	dx:=[]int{0,1,0,-1}
	dy:=[]int{1,0,-1,0}

	//初始坐标点及初始方向，往右
	x,y,di:=0,0,0
	for i:=0;i<m*n ;i++ {
		emptyMatrix[x][y] = true
		result[i] = matrix[x][y]

		//下个位置坐标,如果在区域内并且没有遍历过的，则加入结果集合中，否则就转向
		nx,ny := x+dx[di],y+dy[di]
		if ny >=0 && nx>=0 && nx <m && ny < n && !emptyMatrix[nx][ny]{
			x,y=nx,ny
		} else {
			//只有四个方向，对4取模就可以获得下一个方向的代表的值
			di = (di+1)%4
			x,y = x+dx[di],y+dy[di]
		}
	}
	return result
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

排序+双指针遍历法，

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2 MB, 在所有 Go 提交中击败了26.87%的用户
