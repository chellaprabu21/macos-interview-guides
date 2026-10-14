func rotate(_ nums: inout [Int], _ k: Int) {
    
    func rev(_ a: Int, _ b: Int) {
        var i = a,j = b
        while i < j {
            nums.swapAt(i, j)
            i += 1
            j -= 1
        }
    }
    rev(0, nums.count-1)
    rev(0, k - 1)
    rev(k, nums.count-1)
}
var input = [1,2,3,4,5,6,7], k = 3
    
rotate(&input, k)
