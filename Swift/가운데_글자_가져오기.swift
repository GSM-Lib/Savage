import Foundation

func solution(_ s:String) -> String {
    let str = s.map { String($0) }
    var res: [String] = []
    res.append(str[str.count/2])
    if str.count % 2 == 0 {
        res.insert(str[str.count/2-1], at: 0)
    }
    return res.joined()
}