func countEvenDigitNumbers(_ nums: [Int]) -> Int {
    var count = 0
    for n in nums {
        var digits = 0
        var x = abs(n)
        if x == 0 { digits = 1 }
        else {
            while x > 0 {
                digits += 1
                x /= 10
            }
        }
        if digits % 2 == 0 {
            count += 1
        }
    }
    return count
}

var nums = [12, 345]
countEvenDigitNumbers(nums)
