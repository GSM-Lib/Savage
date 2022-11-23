import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val goalNumber = readLine().toInt()
    var limitNumber = 0
    for (i in 0 until goalNumber) {
        limitNumber += i * 6
        if(goalNumber <= limitNumber + 1) {
            print(i + 1)
            break
        }
    }
}