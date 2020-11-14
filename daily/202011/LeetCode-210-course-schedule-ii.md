#  LeetCode-210-course-schedule-ii

>题目链接

[LeetCode-210-course-schedule-ii](https://leetcode-cn.com/problems/course-schedule-ii/)

>思路

记下每个元素的入度，把入度为0的课程放进队列，然后一个个出列，把出列元素为先导课程的元素的入度减一，当减到0的时候把元素入列

>代码

```go

func findOrder(numCourses int, prerequisites [][]int) []int {
    status := make([]int, numCourses)
    ans := []int{}
    queue := []int{}
    edges := make([][]int, numCourses)
    for i := 0; i < len(prerequisites); i++ {
        status[prerequisites[i][0]]++
        edges[prerequisites[i][1]] = append(edges[prerequisites[i][1]], prerequisites[i][0])
    }

    for i := 0; i < len(status); i++ {
        if status[i] == 0 {
            queue = append(queue, i)
        }
    }

    for len(queue) > 0 {
        class := queue[0]
        ans = append(ans, class)
        queue = queue[1:]
        for _, v := range edges[class] {
            status[v]--
            if status[v] == 0 {
                queue = append(queue, v)
            }
        }
    }
    if len(ans) != numCourses {
        return []int{}
    } else {
        return ans
    }
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n^2)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了98.82%的用户
 
内存消耗 :6.2MB, 在所有 Go 提交中击败了57.58%的用户
