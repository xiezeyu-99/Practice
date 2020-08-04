# LeetCode-207-course-schedule
>题目链接

[LeetCode-207-course-schedule](https://leetcode-cn.com/problems/course-schedule/)

>思路

先构建图，计算每个点的入度，并且找出入度为0的点，这些点不需要先修课程，可以直接学习，把入度为0的点入栈

从入度栈中弹出一个点，放入结果集，然后遍历这个点所有能到达的下一个点，把下个点的入度减一，当下一个点的入度变为0时，也放进栈中

最后对比结果集长度和课程总数，如果相等，则说明所有课程都可以进行学习


>代码

```go

func canFinish(numCourses int, prerequisites [][]int) bool {
	edge:=make([][]int, numCourses)
	count:=make([]int,numCourses)
	for _,v:=range prerequisites {
		edge[v[1]] = append(edge[v[1]],v[0])
		count[v[0]]++
	}

	q:=[]int{}
	for i:=0;i<numCourses;i++ {
		if count[i] == 0 {
			q = append(q,i)
		}
	}

	result:=[]int{}
	for len(q) > 0 {
		a:=q[0]
		q = q[1:]
		result = append(result, a)
		for _,v:=range edge[a] {
			count[v]--
			if count[v] == 0 {
				q = append(q,v)
			}
		}
	}
	return len(result) == numCourses
}


```

>复杂度分析

时间复杂度：O(n+m)，n是课程总数，m是先修课程数

空间复杂度：O(n+m)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了88.08%的用户

内存消耗 :5.8MB, 在所有 Go 提交中击败了100.00%的用户
