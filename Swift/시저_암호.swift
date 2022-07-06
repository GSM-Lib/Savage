import Foundation

func solution(_ s:String, _ n:Int) -> String {
    let upper = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
    let lower = Array("abcdefghijklmnopqrstuvwxyz")
    return s.map { str -> String in
        if let index = upper.firstIndex(of: str) {
            return String(upper[(index + n) % upper.count])
        } else if let index = lower.firstIndex(of: str) {
            return String(lower[(index + n) % lower.count])
        }
        return " "
    }.joined()
}