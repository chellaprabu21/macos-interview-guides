func threeSum(_ nums: [Int]) -> [[Int]] {
    var sorted = nums.sorted()
    var arr: [[Int]] = [[]]
    arr.removeAll()
    for (index,sort) in sorted.enumerated() {
        
        var left = index+1
        var right = sorted.count - 1
        
        if index > 0 && sort == sorted[index-1] { continue}
        
        while left < right{
            var sum = sort + sorted[left] + sorted[right]
            
            if sum == 0{
               let subArr = [sort,sorted[left],sorted[right]]
               if !arr.contains(subArr){
               arr.append(subArr)
               }
                left += 1
                right -= 1
            }
            else if sum > 0 {
                right -= 1
            }
            else if sum < 0{
                left += 1
            }
            
            // while left < right && nums[left] == nums[left+1]{
            //     left += 1
            // }
        }
    }

return arr
}

var nums = [-1,0,1,2,-1,-4]
threeSum(nums)
