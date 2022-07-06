import Foundation

func solution(_ dartResult: String) -> Int {
    let numArr = dartResult.split(whereSeparator: { $0.isLetter || $0 == "*" || $0 == "#" } )
    let strArr = dartResult.split(whereSeparator: { $0.isNumber } )
    return numArr.enumerated().reduce(into: 0) { res, num in
        var score = 0
        let letter = strArr[num.offset]
        if let num = Int(String(num.element)) {
            if letter.contains("S") {
                score = num
            } else if letter.contains("D") {
                score = num * num
            } else if letter.contains("T") {
                score = num * num * num
            }
        }
        if letter.contains("*") {
            score *= 2
        } else if letter.contains("#") {
            score = -score
        }
        
        if num.offset != 2, strArr[num.offset + 1].contains("*") {
            score *= 2
        }
        res += score
    }
}