import Foundation
func solution(_ s:String) -> String {
    let split = s.components(separatedBy: " ").map { Int(String($0))! }
    return "\(split.min()!) \(split.max()!)"
}