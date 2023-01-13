fun solution(number: Int, limit: Int, power: Int): Int {
    return getNumberOfDecimals(number, limit, power).sum()
}

fun getNumberOfDecimals(number: Int, limit: Int, power: Int): List<Int> {
    return powerCheck((1..number).map {
        var count = 1
        for (i in 1..it / 2) {
            if (it % i == 0) {
                count += 1
            }
        }
        count
    }, limit, power)
}