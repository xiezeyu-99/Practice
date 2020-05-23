# LeetCode-30-substring-with-concatenation-of-all-words

>题目链接

[LeetCode-30-substring-with-concatenation-of-all-words](https://leetcode-cn.com/problems/substring-with-concatenation-of-all-words/)

>思路

利用滑动窗口和移动指针，检查窗口中的元素，对子串进行计数

1、如果窗口中出现了不在范围内的子串，则窗口直接移动到该子串后面，重置计数以及指针

2、如果窗口中同样的单词出现次数比words中的多，则窗口移动一个单词距离，并且移出窗口的子串计数减一，指针位置不变，继续检查，知道次数符合要求

3、如果当前指针指向的子串符合要求，则计数加一，指针移动一个单词的距离；如果指针已经移动到窗口末尾，则把窗口开始的索引加入结果集，然后窗口移动一个单词的距离，移出窗口
的子串计数减一

>代码

```go

func findSubstring(s string, words []string) []int {
    if len(s) == 0 || len(words) == 0 {
        return []int{}
    }
    wordsMap :=make(map[string]int)
    for _,v:=range words{
        wordsMap[v]++
    }
    wordLength:= len(words[0])
    totalLength := wordLength*len(words)
    var result []int
    temp := make(map[string]int)
    left,right,count:=0,0,0
    
    //窗口移动
    move:=func(){
        temp[s[left:left+wordLength]]--
        left = left+wordLength
        count--
    }
    
    //重置计数
    reset:=func(){
        if count>0 {
            for i:=range temp{
                temp[i] = 0
            }
        }
        count = 0
    }
    for i:=0;i<wordLength;i++{
        left,right=i,i
        reset()
        for len(s)-left >= totalLength{
            word := s[right:right+wordLength]
            if wordsMap[word] ==0  {
                left =right+wordLength
                right = left
                reset()
            } else if temp[word] == wordsMap[word] {
                move()
            } else {
                count++
                temp[word]++
                right += wordLength
                if count == len(words) {
                    result = append(result,left)
                    move()
                }
            }
        }

    }
    return result
}

```

>复杂度分析

时间复杂度：每次移动窗口，只需要检查新进入窗口的子串，所以复杂度为O(n)；单词中每个字母都可以作为窗口的起始位置，所以总的时间复杂度为O(kn)，其中k为单词长度

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了98.78%的用户

内存消耗 :3.4MB, 在所有 Go 提交中击败了100.00%的用户
