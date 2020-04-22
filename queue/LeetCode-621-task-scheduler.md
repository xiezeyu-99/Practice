#LeetCode-621-task-scheduler

> 题目链接

[LeetCode-621-task-scheduler](https://leetcode-cn.com/problems/task-scheduler/)

> 思路

1、遍历任务，记录每种任务的次数，并且排序（因为相同任务之间有强制等待时间，因此把任务多的先执行，可以减少空闲时间）

2、把任务执行按照n+1分组，把最多次数的任务安排在每个分组的第一个执行，假设次数最多的是任务A，次数是k，这样的话，就会有（k-1）个完整分组和一个单独的任务A，并且存在固定的(k-1)*n的空闲时间

3、剩下的任务按次数从多到少，顺序安排在分组的下一位执行，这里分几种情况

    1）任务次数和A一样，这样就会占满分组空闲时间的同一个位置，并且还多出一个任务没执行，把这个任务安排在单独任务A所在的分组

    2）任务次数比A少一个，这样就刚好占满分组空闲时间的同一个位置

    3）任务次数比A少两个以上，同样在分组的同一个位置顺序安排，如果当前位置安排满了，就安排在第一个分组的下一个位置，继续顺序安排下去

    4）空闲时间安排完了，任务还有剩下的，就增加每个分组的执行次数，继续按照上面的方法安排任务，直到任务安排完毕，舍去剩余的空闲时间

4、按照上述流程安排任务，会优先占用固定空闲时间，如果最后空闲时间还有剩，则执行时间等于剩余空闲时间加上任务总数，如果空闲时间已经没有剩下的，则执行时间等于任务总数



> 代码

```go

func leastInterval(tasks []byte, n int) int {
    if n == 0 { return len(tasks) }
    if len(tasks) == 1 { return 1 }
	cMap := make([]int, 26, 26)
	for _, v := range tasks {
		cMap[v-'A']++
	}
	sort.Ints(cMap)

	free := (cMap[25] - 1) * n
	var useFree int
	for i := 24; i >= 0 && cMap[i] > 0; i-- {
		useFree = int(math.Min(float64(cMap[i]), float64(cMap[25]-1)))
		free = free - useFree
		if free <= 0 {
			break
		}
	}
	if free > 0 {
		return free + len(tasks)
	} else {
		return len(tasks)
	}
}

```

> 复杂度分析

时间复杂度O(n)

空间复杂度O(1)

> 总结

执行用时 :8 ms, 在所有 Go 提交中击败了79.45%的用户
内存消耗 :6 MB, 在所有 Go 提交中击败了100.00%的用户

