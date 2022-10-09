import java.io.BufferedReader
import java.io.InputStreamReader
import kotlin.math.absoluteValue

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    repeat(readLine().toInt()) {
        val (x, y, time) = readLine().split(" ").map { it.toInt() }
        println(
            if (time - (x.absoluteValue + y.absoluteValue) >= 0)
                if ((time - (x.absoluteValue + y.absoluteValue)) % 2 == 0) "YES"
                else "NO"
            else "NO"
        )
    }
}