import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val (currentX, currentY, lineX, lineY) = readLine().split(" ")
    print(intArrayOf(lineX.toInt() - currentX.toInt(), lineY.toInt() - currentY.toInt(), currentX.toInt(), currentY.toInt()).minOf { it })
}