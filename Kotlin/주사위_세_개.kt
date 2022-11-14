import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    val arr = readLine().split(" ").map { it.toInt() }
    val afterArr = arr.filter { item -> arr.count { it == item } > 1 }
    val msg = when (afterArr.size) {
        2 -> {
            afterArr.first() * 100 + 1000
        }
        3 -> {
            arr.first() * 1000 +10000
        }
        else -> {
            arr.maxOf { it } * 100
        }
    }
    print(msg)
}