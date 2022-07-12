func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    return [7-lottos.filter{win_nums.contains($0) || $0 == 0}.count, 7-lottos.filter(win_nums.contains).count].map { $0 > 6 ? 6 : $0 }
}