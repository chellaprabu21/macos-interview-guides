func majorityElement(_ nums: [Int]) -> Int {
    
    var hash: [Int:Int] = [:]
    var  n = nums.count / 2
    
    for num in nums {
        hash[num, default: 0] += 1
        
        if hash[num]! > n {
            return num
        }
    }
    return -1
}
var input = [2, 2, 1, 1, 1, 2, 2]
    
majorityElement(input)
