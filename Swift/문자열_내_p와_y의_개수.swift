import Foundation

func solution(_ s:String) -> Bool{
    let lower = s.lowercased()
    return lower.filter { $0 == "p" }.count == lower.filter { $0 == "y" }.count
}

// 감탄
/*
import Foundation

func solution(_ s:String) -> Bool
{
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}
*/