# LeetCode-846-hand-of-straights

>题目链接

[LeetCode-846-hand-of-straights](https://leetcode-cn.com/problems/hand-of-straights/)

>思路

先排序，然后遍历，找到第一个不为-1的数字作为一组的第一个数字，然后继续在后面寻找递增1的元素，找到尽头或者找够W个就退出，并且把已处理过的元素置为-1。如果退出时，找不够W个元素，则该组不完整，返回false，如果够W个，则找到下一组的开头元素，继续填充该组。

>代码

```go

func isNStraightHand(hand []int, W int) bool {
    lenght := len(hand)
    if lenght%W != 0 {
        return false
    }
    sort.Ints(hand)

    for i := 0; i <= lenght-1; i++ {
        if hand[i]!=-1{
            count:=0
            last := hand[i]-1
            for j:=i;j<= lenght-1;j++{
                if hand[j] == last+1 {
                    last = hand[j]
                    count++
                    hand[j] = -1
                    if count == W {
                        break
                    }
                }
            }
            if count != W{
                return false
            }
        }
    }
    return true
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(1)

>总结

执行用时 :40 ms, 在所有 Go 提交中击败了 75%的用户

内存消耗 :6.3 MB, 在所有 Go 提交中击败了100.00%的用户
