# LeetCode-131-palindrome-partitioning

> 题目链接

[LeetCode-131-palindrome-partitioning](https://leetcode-cn.com/problems/palindrome-partitioning/)

> 思路

不断找最左边的回文串，然后截取字符串继续找，找完后进行回溯

> 代码

```go

var ans [][]string
func partition(s string) [][]string {
    ans=[][]string{}
    find(s,[]string{})
    return ans
}

func find(s string,tmp []string){

    if len(s) == 0{
        copyTemp:=make([]string,len(tmp))
        copy(copyTemp, tmp)
        ans = append(ans, copyTemp)
    }
    for i:=range s{
        if i+1 < len(s) && s[i] == s[i+1] {
            index,status:=check(i,i+1, s)
            if status {
                tmp = append(tmp, s[:index])
                find(s[index:], tmp)
                tmp  =tmp[:len(tmp)-1]
            }
            
        }
        index,status:=check(i,i, s)
        if status {  
            tmp = append(tmp, s[:index])
            find(s[index:], tmp)
            tmp  =tmp[:len(tmp)-1]
        }
        
    }
}

func check(left,right int, s string) (int,bool) {
    for left>=0&&right<len(s) {
        if s[left] == s[right]{
            left--
            right++
        } else {
            break
        }
    }

    if left < 0 {
        s = s[right:]
        return right,true
    } else {
        return -1,false
    }
}


```

> 复杂度分析

时间复杂度：O(n!)

空间复杂度： O(1)


> 总结

执行用时 :12 ms, 在所有 Go 提交中击败了84.47%的用户

内存消耗 :5.3 MB, 在所有 Go 提交中击败了58.14%的用户

