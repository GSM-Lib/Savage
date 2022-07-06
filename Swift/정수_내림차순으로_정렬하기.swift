import Foundation

func solution(_ n:Int64) -> Int64 {
    return Int64(String(n).map { String(Int(String($0)) ?? 0) }.sorted(by: { $0 > $1 }).joined()) ?? 0
}