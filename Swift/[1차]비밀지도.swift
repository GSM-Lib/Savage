import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    for i in arr1.indices {
        var binary = String(arr1[i] | arr2[i], radix: 2)
        var str = String(repeating: "0", count: n - binary.count) + binary
        var builder = str.reduce("", { $0 + ($1 == "0" ? " " : "#") })
        answer.append(builder)
    }
    return answer
}