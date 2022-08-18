func solution(_ sizes:[[Int]]) -> Int {
    var sizes = sizes.map { $0.sorted() }
    return sizes.map { $0[0] }.max()! * sizes.map { $0[1] }.max()!
}