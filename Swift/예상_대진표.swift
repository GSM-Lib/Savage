func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    if (a % 2 != 0 && a + 1 != b) || (a % 2 == 0 && a - 1 != b) {
        return 1 + solution(
            n,
            a % 2 == 0 ? a / 2 : (a + 1) / 2,
            b % 2 == 0 ? b / 2 : (b + 1) / 2
        )
    }
    return 1
}
