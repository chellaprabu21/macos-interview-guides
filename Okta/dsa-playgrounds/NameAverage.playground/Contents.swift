
func highestAverageName(_ entries: [String]) -> String? {
    var totals: [String: (Int, Int)] = [:] // sum, count
    for entry in entries {
        let parts = entry.split(separator: ":", maxSplits: 1)
        guard parts.count == 2, let val = Int(parts[1]) else { continue }
        let name = String(parts[0])
        let (s, c) = totals[name, default: (0, 0)]
        totals[name] = (s + val, c + 1)
    }
    var bestName: String? = nil
    var highestAverage: Double = -Double.greatestFiniteMagnitude
    for (name, stats) in totals {
        let average = Double(stats.0) / Double(stats.1)
        if bestName == nil || average > highestAverage {
            highestAverage = average
            bestName = name
        }
    }
        
        return bestName
}

var names = ["Ram:5", "Shyam:6", "Ram:3"]
highestAverageName(names)
