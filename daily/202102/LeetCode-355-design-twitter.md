# LeetCode-355-design-twitter

>题目链接

[LeetCode-355-design-twitter](https://leetcode-cn.com/problems/design-twitter/)

>思路


>代码

```go

type Twitter struct {
    Tweets []int
    UserTweets map[int][]int
    Follows map[int][]int
    IsFollowMy map[int]bool
}


/** Initialize your data structure here. */
func Constructor() Twitter {
    // 每一次实例化的时候，都重新分配一次，这样不会造成示例重复

    var Tweets  []int

    // 某用户发的某条推特
    var UserTweets = make(map[int][]int)

    // 某用户关注了哪些用户
    var Follows = make(map[int][]int)

    var IsFollowMy = make(map[int]bool)

    t := Twitter{
        Tweets:Tweets,
        UserTweets:UserTweets,
        Follows: Follows,
        IsFollowMy: IsFollowMy,
    }
    return t
}


/** Compose a new tweet. */
func (this *Twitter) PostTweet(userId int, tweetId int)  {
    // 每个人每次发推特，都记录到一个地方
    this.Tweets = append(this.Tweets,tweetId)
    // 某个用户发了推特，存到自己推特列表里
    this.UserTweets[userId] = append(this.UserTweets[userId],tweetId)
}


/** Retrieve the 10 most recent tweet ids in the user's news feed. Each item in the news feed must be posted by users who the user followed or by the user herself. Tweets must be ordered from most recent to least recent. */
func (this *Twitter) GetNewsFeed(userId int) []int {
    fs := this.Follows[userId] // 先获取该用户的关注列表
    var allTweets []int
    for _,v := range fs {
        // 把关注列表的人的所有推特都集中起来
        allTweets = append(allTweets,this.UserTweets[v]...)
    }
    if !this.IsFollowMy[userId] {
        // 如果自己没有关注自己，那么也需要把自己发的推特加到一起
        allTweets = append(allTweets,this.UserTweets[userId]...)
    }
    var sortTweets []int
    aTLen := len(this.Tweets)
    s := 0
    // 按照发的推特顺序进行倒序排序
    for i:=aTLen-1;i>=0;i-- {
        if s >= 10 {
            break
        }
        for _,n := range allTweets {
            
            // 只取 10条数据
            if this.Tweets[i] == n && s < 10{
                s++
                sortTweets = append(sortTweets,n)
            }
        }
    }

    return sortTweets
}


/** Follower follows a followee. If the operation is invalid, it should be a no-op. */
func (this *Twitter) Follow(followerId int, followeeId int)  {
    // 如果自己关注了自己，标记一下
    if followerId == followeeId {
        this.IsFollowMy[followerId] = true
    }
    
    // 下面是判断这人是否关注了，如果已经关注了，那么就不再关注了
    var isFed bool
    for _,v := range this.Follows[followerId] {
        if v == followeeId {
            isFed = true
        }
    }
    if !isFed {
        this.Follows[followerId] = append(this.Follows[followerId],followeeId)
    }
}


/** Follower unfollows a followee. If the operation is invalid, it should be a no-op. */
func (this *Twitter) Unfollow(followerId int, followeeId int)  {
    // 如果自己取关了自己，标记一下
    if followeeId == followerId {
        this.IsFollowMy[followerId] = false
    }
    
    // 去掉自己关注列表里那个被关注的人
    var temp []int
    for _,v := range this.Follows[followerId] {
        if v != followeeId {
            temp = append(temp,v)
        }
    }
    this.Follows[followerId] = temp
}
/**
 * Your Twitter object will be instantiated and called as such:
 * obj := Constructor();
 * obj.PostTweet(userId,tweetId);
 * param_2 := obj.GetNewsFeed(userId);
 * obj.Follow(followerId,followeeId);
 * obj.Unfollow(followerId,followeeId);
 */




```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :104ms, 在所有 Go 提交中击败了12.16%的用户
 
内存消耗 :9.8MB, 在所有 Go 提交中击败了36.76%的用户
