import Foundation

func solution(_ places:[[String]]) -> [Int] {
    var res = [Int]()
    for place in places {
        var target = [(Int, Int)]()
        for (i, row) in place.enumerated() {
            for (k, col) in row.enumerated() {
                if col == "P" {
                    target.append((i, k))
                }
            }
        }
        
        var isFailed = false
        for i in target.indices {
            if isFailed { break }
            for k in (i+1)..<target.count {
                let cur = target[i]
                let next = target[k]
                let dist = abs(cur.0 - next.0) + abs(cur.1 - next.1)
                
                if dist > 2 { continue }
                else if dist == 1 {
                    isFailed = true
                    break
                }
                else if dist == 2 {
                    if cur.0 == next.0 {
                        if place[cur.0][min(cur.1, next.1) + 1] == "O" {
                            isFailed = true
                            break
                        }
                    }
                    else if cur.1 == next.1 {
                        if place[min(cur.0, next.0) + 1][cur.1] == "O" {
                            isFailed = true
                            break
                        }
                    }
                    else {
                        if place[cur.0][next.1] == "O" || place[next.0][cur.1] == "O" {
                            isFailed = true
                            break
                        }
                    }
                }
                
            }
        }
        res.append(isFailed ? 0 : 1)
    }
    return res
}

extension String {
    subscript(_ index: Int) -> Character {
        self[self.index(startIndex, offsetBy: index)]
    }
}
