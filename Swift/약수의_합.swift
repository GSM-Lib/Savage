func solution(_ n:Int) -> Int {
    guard n != 0 else { return 0 }
    return Array(1...n/2).filter { n % $0 == 0 }.reduce(0, +) + n
}