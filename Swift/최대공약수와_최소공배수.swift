func solution(_ n:Int, _ m:Int) -> [Int] {
    let g = gcd(n, m)
    return [g, n * m / g]
}
func gcd(_ n: Int, _ m: Int) -> Int {
    n % m == 0 ? min(n, m) : gcd(m, n % m)
}

