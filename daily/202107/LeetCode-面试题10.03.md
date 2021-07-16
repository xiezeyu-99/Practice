# LeetCode-面试题10.03

>题目链接

[LeetCode-面试题10.03](https://leetcode-cn.com/problems/search-rotate-array-lcci/)

> 思路

>代码

```go

func search(arr []int, target int) int {
    left,right:=0,len(arr)-1

    for left<=right {
        if arr[left] == target {
            return left
        }
        mid:=(right-left)/2+left
       
        if arr[mid] == target {
            right = mid
        } else if arr[mid] > arr[left] {
            if target >= arr[left] && target<arr[mid] {
                right = mid - 1
            } else {
                left = mid +1
            }
        } else if arr[mid]<arr[right] {
            if target <= arr[right] && target > arr[mid] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        } else {
            for left<=right&&arr[mid]==arr[left]{
                left++
            }//中点等于左端点  右移
            for left<=right&&arr[right]==arr[mid]{
                right--
            }//中点等于右端点  左移
        }
    }
    return -1

}



```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
