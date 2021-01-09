#  LeetCode-313-super-ugly-number

>题目链接

[LeetCode-313-super-ugly-number](https://leetcode-cn.com/problems/super-ugly-number/)

>思路

下一个新的丑数，是由其中一个质因数以及已有丑数中的一个相乘得到的，用一个指针数组，记录下每个质因数上一次结合的丑数的下标值，遍历所有结合的值，取最小值作为下一

个丑数，然后再遍历一次，找出该丑数是由哪个质因数和哪个丑数结合成的，把对应指针加1

>代码

```go

func nthSuperUglyNumber(n int, primes []int) int {
    uglyNum := []int{1}
    ptr := make([]int, len(primes))
    for len(uglyNum) != n {
        min := math.MaxInt32
        for i := 0; i < len(primes); i++ {
            if cur := primes[i] * uglyNum[ptr[i]]; cur < min {
                min = cur
            }
        }
        uglyNum = append(uglyNum, min)
        for i := 0; i < len(primes); i++ {
            if min == primes[i]*uglyNum[ptr[i]] {
                ptr[i]++
            }
        }
    }
    return uglyNum[n-1]
}


```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了90.67%的用户
 
内存消耗 :6.4MB, 在所有 Go 提交中击败了39.44%的用户
