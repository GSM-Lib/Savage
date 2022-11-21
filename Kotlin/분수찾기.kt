import java.io.BufferedReader
import java.io.InputStreamReader

fun main() = with(BufferedReader(InputStreamReader(System.`in`))) {
    val number = readLine().toInt()
    var x = 1
    var y = 1
    for (i in 1..number) {
        if (i == 1) {
            continue
        } else {
            if ((x + y) % 2 == 0) {
                if (y == 1) {
                    x += 1
                } else {
                    x += 1
                    y -= 1
                }
            } else {
                if (x == 1) {
                    y += 1
                } else {
                    x-= 1
                    y += 1
                }
            }
        }
    }
    print("$y/$x")
}