import Foundation

func solution(_ s:String) -> Bool {
    var res = 0
    if s.first == ")" { res -= 1}
    s.forEach {
        switch $0 {
        case "(":
            res += 1
        case ")":
            res -= res == 0 ? 0 : 1
        default:
            break
        }
    }
    
    return res == 0
}

