# LeetCode-面试题03.06

>题目链接

[LeetCode-面试题03.06](https://leetcode-cn.com/problems/animal-shelter-lcci/)

> 思路


>代码

```go

type AnimalShelf struct {
    cats, dogs [][]int
}

func Constructor() AnimalShelf {
    return AnimalShelf{}
}

func (this *AnimalShelf) Enqueue(animal []int) {
    if animal[1] == 0 {
        this.cats = append(this.cats, animal)
    } else {
        this.dogs = append(this.dogs, animal)
    }
}

func (this *AnimalShelf) DequeueAny() []int {
    if len(this.cats) == 0 {
        return this.DequeueDog()
    }
    if len(this.dogs) == 0 {
        return this.DequeueCat()
    }
    if this.cats[0][0] < this.dogs[0][0] {
        return this.DequeueCat()
    }
    return this.DequeueDog()
}

func (this *AnimalShelf) DequeueDog() []int {
    if len(this.dogs) == 0 {
        return []int{-1, -1}
    }
    as := this.dogs[0]
    this.dogs = this.dogs[1:]
    return as
}

func (this *AnimalShelf) DequeueCat() []int {
    if len(this.cats) == 0 {
        return []int{-1, -1}
    }
    as := this.cats[0]
    this.cats = this.cats[1:]
    return as
}


```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(n)

>总结

执行用时 :84ms, 在所有 Go 提交中击败了92.31%的用户

内存消耗 :10.4MB, 在所有 Go 提交中击败了80.00%的用户
