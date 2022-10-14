import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val map = mutableMapOf<String, Int>()
    repeat(readLine().toInt()) {
        val firstWord = readLine().substring(0 until 1)
        if(map.containsKey(firstWord)) map[firstWord] = map.getValue(firstWord) + 1
        else map[firstWord] = 1
    }
    val countingOverFive = map.filterValues { it >= 5 }.keys
    print(if(countingOverFive.isEmpty()) "PREDAJA" else countingOverFive.sorted().joinToString(""))
}