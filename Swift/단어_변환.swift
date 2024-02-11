import Foundation

/*
탐색 재귀적으로 -> 같아지면 종료
현재 단어와 다른 문자가 하나인지 판별하는 함수
*/
func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
    var visited = Array(repeating: false, count: words.count)
    var res = 0
    func validDiff(_ origin: String, _ target: String) -> Bool {
        var diffCount = 0
        for input in zip(origin, target) {
            if diffCount >= 2 { return false }
            if input.0 != input.1 {
                diffCount += 1
            }
        }
        return diffCount == 1
    }
    func dfs(_ current: String, _ target: String, _ count: Int) {
        if current == target {
            res = count
            return
        }
        for i in words.indices {
            if visited[i] { continue }
            if validDiff(current, words[i]) {
                visited[i] = true
                dfs(words[i], target, count + 1)
                visited[i] = false
            }
        }
    }
    dfs(begin, target, 0)
    return res
}

print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]))
