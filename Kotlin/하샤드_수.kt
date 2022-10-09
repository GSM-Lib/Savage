fun solution(x: Int): Boolean {
    var number = x
    var sum = 0
    while(number > 0) {
        sum += number % 10
        number /= 10
    }
    return (x % sum == 0)
}