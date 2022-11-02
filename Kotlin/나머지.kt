import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    val arr = mutableListOf<Int>()
    repeat(10) {
        arr.add(readLine().toInt() % 42)
    }
    print( arr.groupingBy { it }.eachCount().keys.size)
}