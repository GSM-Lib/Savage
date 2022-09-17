func solution(_ num:Int) -> Int {
    var res = 0
    var num = num
    while num != 1 {
        if res == 500 { return -1 }
        if num % 2 == 0 {
            num /= 2
        } else {
            num *= 3
            num += 1
        }
        res += 1
    }
    return res
}
