fun solution(s: String): Int {
    var v = s
    EngNum.values().forEach { v = v.replace(it.eng, it.num.toString()) }
    return v.toInt()
}

enum class EngNum(
    val eng: String, val num: Int
) {
    ONE("one", 1),
    TWO("two", 2),
    THREE("three", 3),
    FOUR("four", 4),
    FIVE("five", 5),
    SIX("six", 6),
    SEVEN("seven", 7),
    EIGHT("eight", 8),
    NINE("nine", 9),
    ZERO("zero", 0)
}
