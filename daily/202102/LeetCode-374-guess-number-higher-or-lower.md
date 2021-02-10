#  LeetCode-374-guess-number-higher-or-lower

>题目链接

[LeetCode-374-guess-number-higher-or-lower](https://leetcode-cn.com/problems/guess-number-higher-or-lower/)

>思路

二分法

>代码


```go

/** 
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return 	     -1 if num is lower than the guess number
 *			      1 if num is higher than the guess number
 *               otherwise return 0
 * func guess(num int) int;
 */

func guessNumber(n int) int {
    left,right:=1,n

    for left<=right {
        mid:=(right-left)/2+left
        res:=guess(mid)
        if res == 0 {
            return mid
        } else if res == 1 {
            left = mid +1
        } else {
            right = mid - 1
        }
    }
    return 1
}



```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了62.72%的用户
