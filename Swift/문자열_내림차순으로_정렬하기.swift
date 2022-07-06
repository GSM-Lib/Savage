func solution(_ s:String) -> String {
    String(s.sorted(by: { $0 > $1 } ))
}