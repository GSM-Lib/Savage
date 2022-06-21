import Foundation

func solution(_ s:String) -> String {
    return s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() }.joined() }.joined(separator: " ")
}