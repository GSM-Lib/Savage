import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    var max = Int.MIN_VALUE
    var min = Int.MAX_VALUE

    readLine()
    val arr = readLine().split(" ").toList()
    arr.forEach {
        if (it.toInt() > max) max = it.toInt()
        if (it.toInt() < min) min = it.toInt()
    }
    print(min * max)
}