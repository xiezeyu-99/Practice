# LeetCode-剑指offer-31

>题目链接

[LeetCode-剑指offer-31](https://leetcode-cn.com/problems/zhan-de-ya-ru-dan-chu-xu-lie-lcof/）

> 思路

用中间栈保存数据，在栈顶找对应元素，找不到就一直入栈

>代码

```go

func validateStackSequences(pushed []int, popped []int) bool {
    if len(popped) == 0{
        return true
    }
    temp:=[]int{}

    j:=0
    i:=0
    for j<len(popped){
        if len(temp) > 0 &&  popped[j] == temp[len(temp)-1] {
            temp = temp[:len(temp)-1]
            j++
        } else {
            for i < len(pushed) && pushed[i] != popped[j] {
                temp = append(temp, pushed[i])
                i++
            }  
            if i == len(pushed) {
                return false
            }   
            temp = append(temp, pushed[i])
            i++     
        }
       
    }
    return true
}   


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了82.45%的用户

内存消耗 :3.8MB, 在所有 Go 提交中击败了66.86%的用户
