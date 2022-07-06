func solution(_ n:Int) -> Int {
    var arr = Array(repeating: false, count: n+1)
    eratos(arr: &arr)
    return (2...n).reduce(into: 0, { $0 += arr[$1] ? 0 : 1 })
}

func eratos(arr: inout [Bool]) {
    for i in 2..<arr.count {
        if !arr[i] {
            for k in stride(from: i*i, to: arr.count, by: i) {
                arr[k] = true
            }
        }
    }
}