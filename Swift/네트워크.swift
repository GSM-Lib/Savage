import Foundation

func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    var visited = Array(repeating: false, count: n)
    var res = 0
    func dfs(_ value: Int) {
        visited[value] = true
        for near in 0..<n {
            if !visited[near], computers[value][near] == 1 {
                dfs(near)
            }
        }
    }
    for i in 0..<n {
        if !visited[i] {
            dfs(i)
            res += 1
        }
    }
    return res
}