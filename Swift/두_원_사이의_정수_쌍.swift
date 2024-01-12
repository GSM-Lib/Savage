import Foundation

func solution(_ r1: Int, _ r2: Int) -> Int64 {
    var result: Int64 = 0
    for i in 1...r2 {
        let h1 = Int64(sqrt(Double(r2 * r2 - i * i)))
        let h2: Int64
        if i < r1 {
            let value = sqrt(Double(r1 * r1 - i * i))
            h2 = Int64(ceil(value))
        } else {
            h2 = 0
        }
        result += h1 - h2 + 1
    }
    return result * 4
}