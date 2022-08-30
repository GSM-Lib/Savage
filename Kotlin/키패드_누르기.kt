import kotlin.math.absoluteValue

fun solution(numbers: IntArray, hand: String): String {

    var leftHand = "#"
    var rightHand = "*"

    val map = mutableMapOf<String, Array<Int>>()
    map["#"] = arrayOf(-1, 0)
    map["0"] = arrayOf(0, 0)
    map["*"] = arrayOf(1, 0)
    map["1"] = arrayOf(-1, 3)
    map["2"] = arrayOf(0, 3)
    map["3"] = arrayOf(1, 3)
    map["4"] = arrayOf(-1, 2)
    map["5"] = arrayOf(0, 2)
    map["6"] = arrayOf(1, 2)
    map["7"] = arrayOf(-1, 1)
    map["8"] = arrayOf(0, 1)
    map["9"] = arrayOf(1, 1)

    return (numbers.joinToString("") {
        when (it) {
            1, 4, 7 -> {
                leftHand = it.toString()
                "L"
            }
            3, 6, 9 -> {
                rightHand = it.toString()
                "R"
            }
            else -> {
                val address = map[it.toString()]
                if ((address!![0].toDouble() - map[leftHand]!![0].toDouble()).absoluteValue + (address[1] - map[leftHand]!![1].toDouble()).absoluteValue
                    >
                    (address[0].toDouble() - map[rightHand]!![0].toDouble()).absoluteValue + (address[1] - map[rightHand]!![1].toDouble()).absoluteValue
                ) {
                    rightHand = it.toString()
                    "R"
                } else if ((address[0].toDouble() - map[leftHand]!![0].toDouble()).absoluteValue + (address[1] - map[leftHand]!![1].toDouble()).absoluteValue
                    <
                    (address[0].toDouble() - map[rightHand]!![0].toDouble()).absoluteValue + (address[1] - map[rightHand]!![1].toDouble()).absoluteValue
                ) {
                    leftHand = it.toString()
                    "L"
                } else {
                    if(hand == "left") {
                        leftHand = it.toString()
                    } else {
                        rightHand = it.toString()
                    }
                    hand.first().uppercase()
                }
            }
        }
    })
}