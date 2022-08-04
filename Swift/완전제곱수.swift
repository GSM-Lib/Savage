import Foundation

let start = Int(readLine()!)!
let end = Int(readLine()!)!
let arr = (start...end).filter(isSquare(n:))

if arr.isEmpty {
    print(-1)
} else {
    print(arr.reduce(0, +))
    print(arr.first ?? 0)
}

func isSquare(n: Int) -> Bool {
    let x = Int(sqrt(Double(n)))
    return x * x == n
}

