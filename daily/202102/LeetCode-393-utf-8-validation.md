#  LeetCode-393-utf-8-validation

>题目链接

[LeetCode-393-utf-8-validation](https://leetcode-cn.com/problems/utf-8-validation/)

>思路

位运算

>代码

```go

func validUtf8(data []int) bool {

    for i:=0;i<len(data);i++ {
        
        //一字节，直接跳过
        if (data[i]>>7)&1==0 {
            continue
        }

        //计算有多少个字节
        p:=7
        for (data[i]>>p) & 1 == 1 && p>0 {
              p--  
        }   
        if p == 6 {//10开头无效
            return false
        }
        if p == 0 && (data[i]>>p) & 1 == 1 {  //最后一位是0其他全是1，无效       
            return false
        }  
        length:=7-p//字符的字节数
        if  length>4 || i+length>len(data){     //长度大于4或者大于数组长度，无效      
            return false
        }

        j:=i+1  
        for ;j<i+length;j++ {          
            if (data[j]>>7)&1!=1 || (data[j]>>6)&1!=0 {
                return false
            }
        }
        i=j-1
        
    }
    return true
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了73.47%的用户
 
内存消耗 :5.2MB, 在所有 Go 提交中击败了69.39%的用户
