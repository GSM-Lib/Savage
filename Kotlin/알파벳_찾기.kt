import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val arr = readLine().toCharArray()
    val list = (97..122).toList().map { arr.indexOf(it.toChar()) }
    print(list.joinToString(" "))
}