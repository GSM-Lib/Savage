func solution(_ n:Int) -> String {
    (0..<n).reduce("", nextPartialResult: { 
        $0 + $1 % 2 == 0 ? "수" : "박"
    })
}