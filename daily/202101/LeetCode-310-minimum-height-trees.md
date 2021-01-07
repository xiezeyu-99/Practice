#  LeetCode-310-minimum-height-trees
>题目链接

[LeetCode-310-minimum-height-trees](https://leetcode-cn.com/problems/minimum-height-trees/)

>思路

bfs

>代码

```go

func findMinHeightTrees(n int, edges [][]int) []int {
    if n==1{
        return []int{0}
    }
    degree:=make([]int,n)
    graph:=make([][]int,n)
    for _,edge:=range edges{
        graph[edge[0]]=append(graph[edge[0]],edge[1])
        graph[edge[1]]=append(graph[edge[1]],edge[0])
        degree[edge[0]]++
        degree[edge[1]]++
    }
    queue:=Queue{}
    for i:=0;i<len(degree);i++{
        if degree[i]==1{
            queue.Push(i)
        }
    }
    queue.Push(-1)
    rst:=[]int{}
    for !queue.Empty(){
        val:=queue.Pop()
        if val!=-1{
            degree[val]--
            rst=append(rst,val)
            for _,v:=range graph[val]{
                degree[v]--
                if degree[v]==1{
                    queue.Push(v)
                }
            }
        }else{
            if !queue.Empty(){
                queue.Push(-1)
                rst=[]int{}
            }
        }
    }
    return rst
}
type Queue[]int
func (r*Queue)Push(node int){
    (*r)=append(*r,node)
}
func (r*Queue)Pop()int{
    node:=(*r)[0]
    (*r)=(*r)[1:]
    return node
}
func (r*Queue)Empty()bool{
    return len(*r)==0
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :36ms, 在所有 Go 提交中击败了91.36%的用户
 
内存消耗 :7.4MB, 在所有 Go 提交中击败了63.79%的用户
