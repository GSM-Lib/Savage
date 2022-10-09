import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    print(readLine().split(" ").map { it.toInt() }.reduce{ acc, i ->  acc * i})
}