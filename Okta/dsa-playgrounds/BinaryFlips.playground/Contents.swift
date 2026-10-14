func minFlipsToAlternate(_ s: String) -> Int {
    var flip0 = 0 // Tracks flips to make "101010..."
    var flip1 = 0 // Tracks flips to make "010101..."
    
    for (i, char) in s.enumerated() {
        
        // Is the current index an Even number? (0, 2, 4...)
        if i % 2 == 0 {
            // Pattern A ("1010...") wants a "1" here
            if char != "1" { flip0 += 1 }
            
            // Pattern B ("0101...") wants a "0" here
            if char != "0" { flip1 += 1 }
            
        }
        // Or is it an Odd number? (1, 3, 5...)
        else {
            // Pattern A ("1010...") wants a "0" here
            if char != "0" { flip0 += 1 }
            
            // Pattern B ("0101...") wants a "1" here
            if char != "1" { flip1 += 1 }
        }
    }
    
    return min(flip0, flip1)
}
var nums = "00110"
    
minFlipsToAlternate(nums)
