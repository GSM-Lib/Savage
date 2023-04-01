import Foundation

func solution(_ n: Int, _ costs: [[Int]]) -> Int {
    var parent = Array(0..<n)
    var res = 0
    func findParent(x: Int) -> Int {
        if parent[x] != x {
            parent[x] = findParent(x: parent[x])
        }
        return parent[x]
    }
    func union(x: Int, y: Int) {
        let a = findParent(x: x)
        let b = findParent(x: y)
        if a < b {
            parent[b] = a
        } else {
            parent[a] = b
        }
    }
    let sortedCost = costs.sorted { $0[2] < $1[2] }
    for island in sortedCost {
        let (x, y, cost) = (island[0], island[1], island[2])
        if findParent(x: x) != findParent(x: y) {
            union(x: x, y: y)
            res += cost
        }
    }
    return res
}