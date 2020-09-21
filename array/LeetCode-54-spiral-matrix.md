# LeetCode-54-spiral-matrix

>题目链接

[LeetCode-54-spiral-matrix 螺旋矩阵](https://leetcode-cn.com/problems/spiral-matrix/)

>思路

定好边界，每次遍历一条边，边界就往里面缩减一个单位

>代码

```go
func spiralOrder(matrix [][]int) []int {
	var result []int
	if len(matrix) == 0 {
		return result
	}
	left, right, up, down := 0, len(matrix[0])-1, 0, len(matrix)-1

	var x, y int
	for left <= right && up <= down {
		for y = left; y <= right; y++ {
			result = append(result, matrix[up][y])
		}
		up++
        if !avoid(left, right, up, down) {
            break
        }
		for x = up; x <= down; x++ {
			result = append(result, matrix[x][right])
		}
		right--
        if !avoid(left, right, up, down) {
            break
        }
		for y = right; y >= left; y-- {
			result = append(result, matrix[down][y])
		}
		down--
        if !avoid(left, right, up, down) {
            break
        }
		for x = down; x >= up; x-- {
			result = append(result, matrix[x][left])
		}
		left++
        if !avoid(left, right, up, down) {
            break
        }
	}
	return result
}

func avoid(left, right, up, down int) bool {
	return up <= down && left <= right
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结


执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2 MB, 在所有 Go 提交中击败了26.87%的用户
