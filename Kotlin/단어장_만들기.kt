import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    val (count, specificLocation) = readLine().split(" ").map { it.toInt() }
    val lib = mutableListOf<String>()
    repeat(count) {
        lib.add(readLine())
    }
    print(lib.sortedWith(compareBy(
        {it.length},
        {it}
    ))[specificLocation - 1])
}