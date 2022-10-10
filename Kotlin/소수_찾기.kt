import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    readLine()
    val arr = readLine().split(" ").toMutableList()
    for (i in 0 until arr.size) {
        if (arr[i].toInt() != 1) {
            for (j in 2 until arr[i].toInt()) {
                if (arr[i].toInt() % j == 0) arr[i] = "1"
            }
        }
    }
    print(arr.filter { it != "1" }.size)
}