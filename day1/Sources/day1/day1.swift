typealias ComparisonFunc = (String, Int) -> Character

func partOne(puzzleText: String) -> Int {
    return solve(puzzleText: puzzleText, compare: partOneComparisonFunc)
}

private func partOneComparisonFunc(seedData: String, position: Int) -> Character {
    if seedData.count - 1 == position {
        return seedData[seedData.index(seedData.startIndex, offsetBy: 0)]
    }
    return seedData[seedData.index(seedData.startIndex, offsetBy: position + 1)]
}

func partTwo(puzzleText: String) -> Int {
    return solve(puzzleText: puzzleText, compare: partTwoComparisonFunc)
}

private func partTwoComparisonFunc(seedData: String, position: Int) -> Character {
    let halfSize = seedData.count / 2
    let doubleList = seedData + seedData
    
    let offset = position + halfSize
    let index = doubleList.index(doubleList.startIndex, offsetBy: offset)
    return doubleList[index]
}

private func solve(puzzleText: String, compare: ComparisonFunc) -> Int {
    var runningTotal = 0
    
    for (index, c) in puzzleText.enumerated() {
        if c == compare(puzzleText, index) {
            runningTotal += Int(String(c))!
        }
    }
    
    return runningTotal
}
