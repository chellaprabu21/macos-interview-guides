func pairSum(_ nums: [Int], _ target: Int) -> (Int, Int)? {
    
    var left = 0
    var right = nums.count - 1
    
    
    while left < right {
        var sum = nums[left] + nums[right]
        
        if sum == target {
            return (left, right)
        } else if sum < target {
            left += 1
        } else {
            right -= 1
        }
    }
    return (0,0)
}
var nums = [1, 2, 4, 6, 10]
pairSum(nums, 10)
