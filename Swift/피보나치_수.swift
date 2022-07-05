func solution(_ n:Int) -> Int {
    var arr = Array(repeating: 0, count: n+1)
    arr[1] = 1
    for i in 2...n {
        let sum = arr[i - 1] + arr[i - 2]
        arr[i] = sum % 1234567
    }
    return arr[n]
}
