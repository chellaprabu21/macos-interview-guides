func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        let sort = nums.sorted(by: >)

         return sort[k-1]
}
var nums = [3,2,1,5,6,4]
    
findKthLargest(nums,2)
