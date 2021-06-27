# LeetCode-面试题05.03

>题目链接

[LeetCode-面试题05.03](https://leetcode-cn.com/problems/reverse-bits-lcci/)

> 思路


>代码

```go

func reverseBits(num int) int {
    if num == 0{
        return 1
    }
    num1 :=uint32(num)
    lenold := 0
    lennew := 0
    Max := 0
    chance := 0
    for num1!=0{
        if num1&1==1{
            lennew++
            chance = 1
            if lennew + lenold +1 > Max{
                Max = lennew + lenold +1
            }
        }else{
            if chance == 0{
                lenold = 0
                lennew = 0
            }else{
                chance = 0
                if lennew + lenold +1 > Max{
                    Max = lennew + lenold +1
                }
                lenold = lennew
                lennew = 0
            }
        }
        num1 = num1>>1
    }
        if Max==33{
            return 32
        }
        return Max   
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
