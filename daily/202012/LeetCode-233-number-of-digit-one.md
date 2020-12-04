#  LeetCode-233-number-of-digit-one

>题目链接

[LeetCode-233-number-of-digit-one](https://leetcode-cn.com/problems/number-of-digit-one/)

>思路



>代码

```go

func countDigitOne(n int) int {
    // 边界情况
    if n < 1 {
      return 0
    }
    count, factor := 0, 1 // 初始化计数器为0,和位数初始化为1
    for n/factor != 0 {   // 当整数n除以factor不等于0时
      // 不断执行之下操作
      // 先求出当前位上的数字digit
      digit := (n / factor) % 10 // n除以factor再对10取模
      // 然后计算更高位的数字high
      high := n/(10*factor) // n除以10倍的factor
      if digit == 0 {// 如果当前位数的数字等于0
        count+=high*factor // 计数器则加上high乘以factor
      } else if digit == 1 { // 如果当前位数字等于1
        count+=high*factor // 计数器不仅要加上igh乘以factor
        count+=(n%factor)+1 // 还要加上低位数字(n对factor取模即可求出)再加1
      } else { // 如果是其他情况
        count+=(high+1)*factor // 计数器则加上(high+1)乘以factor
      }
      // 计算完当前factor位上1出现的次数
      factor = factor*10 // factor乘以10进行更新,准备计算下一个十进制位
    }
    return count // 循环结束后返回count即可。
  }
```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了89.36%的用户
