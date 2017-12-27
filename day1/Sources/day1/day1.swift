typealias ComparisonFunc = (String, Int) -> Character

func partOne(_ puzzleText: String) -> Int {
    return solve(puzzleText, comparisonFunc: { (numberList: String, position: Int) -> Character in
        if numberList.count - 1 == position {
            return numberList[numberList.index(numberList.startIndex, offsetBy: 0)]
        }
        return numberList[numberList.index(numberList.startIndex, offsetBy: position + 1)]
    })
}

func partTwo(_ puzzleText: String) -> Int {
    return solve(puzzleText, comparisonFunc: { (numberList: String, position: Int) -> Character in
        let halfSize = numberList.count / 2
        let doubleList = numberList + numberList

        let offset = position + halfSize
        let index = doubleList.index(doubleList.startIndex, offsetBy: offset)
        return doubleList[index]
    })
}

private func solve(_ puzzleText: String, comparisonFunc compare: ComparisonFunc) -> Int {
    var runningTotal = 0
    
    for (index, c) in puzzleText.enumerated() {
        if c == compare(puzzleText, index) {
            runningTotal += Int(String(c))!
        }
    }
    
    return runningTotal
}
