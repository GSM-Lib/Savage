import Foundation

func solution(_ s:String) -> Int {
    guard s.count >= 2 else { return s.count }
    var res = s.count
    for i in 1...s.count/2 {
        let sliced = sliceString(s, size: i)
        var appending = ""
        var prev = ""
        var count = 1
        sliced.forEach {
            if prev == $0 {
                count += 1
            } else {
                if !prev.isEmpty {
                    appending += count > 1 ? "\(count)\(prev)" : prev
                }
                count = 1
                prev = $0
            }
        }
        if !prev.isEmpty {
            appending += count > 1 ? "\(count)\(prev)" : prev
        }
        res = min(res, appending.count)
    }
    return res
}

func sliceString(_ str: String, size: Int) -> [String] {
    var res = [String]()
    var temp = ""
    str.forEach {
        temp += String($0)
        if temp.count == size {
            res.append(temp)
            temp = ""
        }
    }
    if !temp.isEmpty { res.append(temp) }
    return res
}