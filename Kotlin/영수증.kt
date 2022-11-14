import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    val coast = readLine().toInt()
    var sum = 0
    repeat(readLine().toInt()) {
        val arr = readLine().split(" ").map { it.toInt() }
        sum += arr[0] * arr[1]
    }
    print(if (sum == coast) "Yes" else "No")
}