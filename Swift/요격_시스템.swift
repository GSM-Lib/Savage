import Foundation

func solution(_ targets:[[Int]]) -> Int {
    let targets = targets.sorted { $0[1] < $1[1] }

    var count = 0
    var last = 0
    for target in targets where target[0] >= last {
        count += 1
        last = target[1]
    }
    
    return count
}