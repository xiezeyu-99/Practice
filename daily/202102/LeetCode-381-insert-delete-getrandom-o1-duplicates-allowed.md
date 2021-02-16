#  LeetCode-381-insert-delete-getrandom-o1-duplicates-allowed

>题目链接

[LeetCode-381-insert-delete-getrandom-o1-duplicates-allowed](https://leetcode-cn.com/problems/insert-delete-getrandom-o1-duplicates-allowed/)

>思路

用map记录下标

>代码

```go

type RandomizedCollection struct {
    rMap   map[int]map[int]int
    rSlice []int
}

/** Initialize your data structure here. */
func Constructor() RandomizedCollection {
    return RandomizedCollection{
        rMap:   make(map[int]map[int]int),
        rSlice: []int{},
    }
}

/** Inserts a value to the collection. Returns true if the collection did not already contain the specified element. */
func (this *RandomizedCollection) Insert(val int) bool {
    this.rSlice = append(this.rSlice, val)
    if _, ok := this.rMap[val]; ok {
        this.rMap[val][len(this.rSlice)-1] = 1
        return false
    } else {
        this.rMap[val] = map[int]int{
            len(this.rSlice) - 1: 1,
        }
        return true
    }
}

/** Removes a value from the collection. Returns true if the collection contained the specified element. */
func (this *RandomizedCollection) Remove(val int) bool {
    //不存在
    if len(this.rMap[val]) == 0 {
        return false
    }

    //随机获取一个val的下标
    index := 0
    for index = range this.rMap[val] {
        break
    }
    //把index与队尾交换，删除map中旧的index的对应关系，同时新增现在的index的对应关系
    this.rSlice[index] = this.rSlice[len(this.rSlice)-1]
    //先删map，防止新增后又被删除，导致实际删除2次
    delete(this.rMap[val], index)
    this.rMap[this.rSlice[index]][index] = 1

    //先从map中删除原队尾的对应关系，再删除slice队尾，先删map防止最后一个元素删除队尾后，队列为空导致数组越界panic
    delete(this.rMap[this.rSlice[index]], len(this.rSlice)-1)
    this.rSlice = this.rSlice[:len(this.rSlice)-1]

    return true
}

/** Get a random element from the collection. */
func (this *RandomizedCollection) GetRandom() int {
    if len(this.rSlice) == 0 {
        return -1
    }
    index := rand.Intn(len(this.rSlice))
    return this.rSlice[index]
}

/**
 * Your RandomizedCollection object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Insert(val);
 * param_2 := obj.Remove(val);
 * param_3 := obj.GetRandom();
 */


```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(n)

>总结

执行用时 :36ms, 在所有 Go 提交中击败了88.00%的用户
 
内存消耗 :9.9MB, 在所有 Go 提交中击败了10.00%的用户
