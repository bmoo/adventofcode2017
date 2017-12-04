func matchDigits(puzzleText: String) -> Int {
    var charArray = addFirstCharToEnd(input: puzzleText)
    
    var runningTotal: Int = 0
    guard var lastChar = charArray.first else {
        return 0
    }
    
    charArray.remove(at: puzzleText.startIndex)
    
    for c in charArray {
        if c == lastChar {
            runningTotal += Int(String(c))!
        }
        lastChar = c
    }
    
    return runningTotal
}

func addFirstCharToEnd(input: String) -> String.CharacterView {
    if input.count == 0 {
        return String.CharacterView()
    }
    
    var allChars = input.characters
    
    if let firstChar = input.first {
        allChars.append(firstChar)
    }
    
    return allChars
}
