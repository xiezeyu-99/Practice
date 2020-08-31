# LeetCode-93-restore-ip-addresses
>题目链接

[LeetCode-93-restore-ip-addresses](https://leetcode-cn.com/problems/restore-ip-addresses/)

>思路

回溯

>代码

```go

var ans []string
func restoreIpAddresses(s string) []string {  
	ans = []string{}
    if len(s) <= 12{
        dfs(0,1,0,s,[]string{})
    }
    return ans
}

func dfs(left,right,count int, s string,res []string){
	if count == 4 && right==len(s)+1 {
		ans = append(ans,strings.Join(res, "."))
        return
	}
	for i:=right;i<=len(s)&&right-i<=3;i++ {
		if isValid(s[left:i]) {
			res = append(res, s[left:i])
			dfs(i,i+1,count+1,s,res)
			res = res[:len(res)-1]
		}
	}
}

func isValid(s string) bool {
	num,_:=strconv.Atoi(s)
	if s == "0" || (s[0] != '0' && num >=0 && num<=255) {
		return true
	} else {
		return false
	}
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.6MB, 在所有 Go 提交中击败了6.54%的用户
