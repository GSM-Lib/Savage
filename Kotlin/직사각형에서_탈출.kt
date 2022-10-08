import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val (currentX, currentY, lineX, lineY) = readLine().split(" ").map { it.toInt() }
    print(intArrayOf(lineX - currentX, lineY - currentY, currentX, currentY).minOf { it })
}