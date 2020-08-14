# LeetCode-67-add-binary
>题目链接

[LeetCode-67-add-binary](https://leetcode-cn.com/problems/add-binary/)

>思路

一位一位的求和

>代码

```go

func addBinary(a string, b string) string {
    i,j:=len(a)-1,len(b)-1
    var length int
    if len(a) > len(b) {
        length=len(a)+1
    } else {
        length=len(b)+1
    }
    ans:=[]byte{}
    for i:=0;i<length;i++{
        ans = append(ans, '0')
    }

    for k:=len(ans)-1;k>=0;k-- {
        if i<0 && j<0 {
            break
        }else if i<0 {
            if ans[k] == '1' && b[j] == '1' {
                ans[k-1] = '1'
                ans[k] = '0'
            } else if ans[k] == '1' || b[j] ==  '1' {
                ans[k] = '1'
            }           
            j--
        } else if j<0 {
            if ans[k] == '1' && a[i] == '1' {
                ans[k-1] = '1'
                ans[k] = '0'
            } else if ans[k] == '1' || a[i] ==  '1' {
                ans[k] = '1'
            } 
            i--
        } else {
            if a[i] == '1' && b[j] == '1' {
                ans[k-1] = '1' 
            } else if a[i] == '1' || b[j] ==  '1' {
                if ans[k] == '0' {
                    ans[k] = '1'
                } else {
                    ans[k] = '0'
                    ans[k-1] = '1'
                }
            }
            i--
            j--
        }              
    }
    if ans[0] == '0' {
        ans = ans[1:]
    }
    return string(ans)
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了94.19%的用户
