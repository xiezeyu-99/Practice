# LeetCode-面试题16.02

>题目链接

[LeetCode-面试题16.02](https://leetcode-cn.com/problems/words-frequency-lcci/)

> 思路

>代码

```go

type WordsFrequency struct {
    frequency map[string]int
}


func Constructor(book []string) WordsFrequency {
    w:=WordsFrequency{
        frequency:make(map[string]int),
    }
    for _,v:=range book {
        w.frequency[v]++
    }
    return w
}


func (this *WordsFrequency) Get(word string) int {
    return this.frequency[word]
}


/**
 * Your WordsFrequency object will be instantiated and called as such:
 * obj := Constructor(book);
 * param_1 := obj.Get(word);
 */


```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
