func solution(_ arr:[Int]) -> [Int] {
    let min = arr.min() ?? 0
    var res = arr.filter { $0 != min }
    return res.isEmpty ? [-1] : res
}