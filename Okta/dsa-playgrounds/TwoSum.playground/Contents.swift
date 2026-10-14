func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var seen: [Int: Int] = [:] // number,Index
    for (index, number) in nums.enumerated() {
        let comp = target - number
        if let j = seen[comp] {
            return [j, index]
        }
        seen[number] = index
    }
    return []
}

var nums = [2, 7, 11, 15]
twoSum(nums, 9)
