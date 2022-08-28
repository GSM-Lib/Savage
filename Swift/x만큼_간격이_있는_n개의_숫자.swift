func solution(_ x:Int, _ n:Int) -> [Int64] {
    Array(1...n).map { Int64(x * $0) }
}
