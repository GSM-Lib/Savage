import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    let sortedA = a.sorted(by: >)
    let sortedB = b.sorted(by: >)
    var res = 0
    for i in sortedA.indices {
        if sortedA[i] < sortedB[res] {
            res += 1
        }
    }
    return res
}