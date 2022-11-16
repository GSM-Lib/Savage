fun solution(price: Int, money: Int, count: Int): Long {
    var temp: Long = 0
    for (i in 1..count) {
        temp += price * i
    }
    return if (money > temp) 0 else temp - money
}