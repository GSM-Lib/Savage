import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let res = arr.filter { $0 % divisor == 0 }.sorted()
    return res.isEmpty ? [-1] : res
}